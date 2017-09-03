class User < ApplicationRecord
  belongs_to :school,  optional: true
  belongs_to :group,   optional: true

  has_one :hr_group, class_name: "Group"

  has_many :courses
  has_many :lessons, through: :courses
  has_many :marks
  has_many :absences
  has_many :invitations

  has_many :student_relations, foreign_key: "parent_id", class_name: "Parentship"
  has_many :students, through: :student_relations, source: :student

  has_many :parent_relations, foreign_key: "student_id", class_name: "Parentship"
  has_many :parents, through: :parent_relations, source: :parent

  has_many :messages, as: :entity

  enum role: { student: 0, teacher: 1, moderator: 2 }

  has_secure_password
  validates :email, uniqueness: true, presence: true
  validates :password,
            presence: true,
            length: { minimum: 6 },
            allow_blank: true
  validates :password_digest, presence: true, allow_blank: true

  def admin?
    admin
  end

  def teacher?
    super && accepted
  end

  def student?
    super && accepted
  end

  def title
    role = I18n.t ("role." + self.role)
    return I18n.t 'title.role_in_school', role: role, school: school.name
  end
end
