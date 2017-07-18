class Permission < ApplicationRecord
	has_many :roles, through: :permission_roles
end
