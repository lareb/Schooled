class Group < ApplicationRecord
  belongs_to :school

  has_many :courses
  has_many :students, class_name: "User"
end
