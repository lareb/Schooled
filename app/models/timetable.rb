class Timetable < ApplicationRecord
  belongs_to :school

  has_many :slots
end
