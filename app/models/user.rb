class User < ApplicationRecord
  belongs_to :school
  belongs_to :role
end
