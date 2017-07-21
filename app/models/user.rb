class User < ApplicationRecord
  belongs_to :school
  belongs_to :role
  belongs_to :group

  has_many :marks
  has_many :courses, through: :course_students
  has_many :teaching_groups, through: :course_group_teacher, class_name: 'CourseGroup'
end
