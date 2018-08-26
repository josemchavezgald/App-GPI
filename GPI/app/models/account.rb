class Account < ApplicationRecord
	
	validates :nombre, presence: true
	validates :contrasena, presence: true
	validates :tipo, presence: true
end
