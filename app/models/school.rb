class School < ApplicationRecord
  has_many :users
  has_many :courses
  has_many :groups
end
