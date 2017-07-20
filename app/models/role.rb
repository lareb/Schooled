class Role < ApplicationRecord
  belongs_to :school

  has_many :permissions, through: :permission_roles
end
