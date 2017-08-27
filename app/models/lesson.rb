class Lesson < ApplicationRecord
  belongs_to :schedule
  belongs_to :course
end
