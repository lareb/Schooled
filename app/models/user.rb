class User < ApplicationRecord
  belongs_to :school,  optional: true
  belongs_to :group,   optional: true

  has_many :marks
  has_many :parent_students
  has_many :children, through: :parent_students, class_name: "User"
  has_many :parents,  through: :parent_students, class_name: "User"

  enum role: { student: 0, teacher: 1, moderator: 2, parent: 3 }

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
