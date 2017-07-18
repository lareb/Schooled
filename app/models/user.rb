class User < ApplicationRecord
  belongs_to :school
  belongs_to :role

  has_many :marks
  has_many :courses, through: :course_users
end
