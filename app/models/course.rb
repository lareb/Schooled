class Course < ApplicationRecord
	belongs_to :subject
	belongs_to :school

	has_many :users, through: :course_users
end
