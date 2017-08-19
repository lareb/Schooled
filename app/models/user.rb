class User < ApplicationRecord
  belongs_to :school,  optional: true
  belongs_to :group,   optional: true

  has_many :courses
  has_many :marks

  has_many :student_relations, foreign_key: "parent_id", class_name: "ParentStudent"
  has_many :students, through: :student_relations, source: :student

  has_many :parent_relations, foreign_key: "student_id", class_name: "ParentStudent"
  has_many :parents, through: :parent_relations, source: :parent

  enum role: { student: 0, teacher: 1, moderator: 2 }

  has_secure_password
  validates :email, uniqueness: true, presence: true
  validates :password,
            presence: true,
            length: { minimum: 6 }
  validates :password_digest, presence: true, allow_blank: true

  def admin?
    admin
  end
end
