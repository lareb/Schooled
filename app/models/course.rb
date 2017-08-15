class Course < ApplicationRecord
  belongs_to :school

  has_one :student_class
  has_many :subjects
end
