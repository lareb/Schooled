class School < ApplicationRecord
  has_many :students, class_name: "User"
  has_many :teachers, class_name: "User"
  has_many :moderators, class_name: "User"
  
  has_many :courses
  has_many :groups
end
