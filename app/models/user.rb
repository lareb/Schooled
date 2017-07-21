class User < ApplicationRecord
  belongs_to :school,  optional: true
  belongs_to :role,    optional: true
  belongs_to :group,   optional: true

  has_many :marks
  has_many :courses, through: :course_students
  has_many :teaching_groups, through: :course_group_teacher, class_name: 'CourseGroup'

  has_secure_password
  validates :email, uniqueness: true, presence: true
  validates :password,
            presence: true,
            length: { minimum: 6 }
end
