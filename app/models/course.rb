class Course < ApplicationRecord
  belongs_to :subject
  belongs_to :school
  belongs_to :teacher, class_name: "User"

  has_many :course_students
  has_many :students, through: :course_students, class_name: "User"
end
