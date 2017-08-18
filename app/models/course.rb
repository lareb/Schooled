class Course < ApplicationRecord
  belongs_to :subject
  belongs_to :school
  belongs_to :teacher, class_name: "User"
  belongs_to :group
end
