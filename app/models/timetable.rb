class Timetable < ApplicationRecord
  belongs_to :school

  has_many :schedules
  has_many :slots
end
