class User < ApplicationRecord
  belongs_to :school, optional: true
  belongs_to :role, optional: true

  has_many :marks
  has_many :courses, through: :course_users

  has_secure_password
  validates :email, uniqueness: true, presence: true
  validates :password,
            presence: true,
            length: { minimum: 6 }
end
