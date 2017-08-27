class Schedule < ApplicationRecord
  belongs_to :timetable
  belongs_to :group

  has_many :lessons
end
