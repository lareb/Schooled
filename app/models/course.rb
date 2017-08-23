class Course < ApplicationRecord
  belongs_to :subject
  belongs_to :school
  belongs_to :teacher, class_name: "User", foreign_key: "user_id"
  belongs_to :group

  has_many :messages, as: :entity
end
