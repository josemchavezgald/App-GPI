class Account < ApplicationRecord
	def self.login(n, pass)
		#hashed_password = hash_password(password || "")

		Account.where(nombre: "@n", contrasena: "@pass").first
	end
	def try_to_login
		Account.login(:nombre, :contrasena)
	end

	validates :nombre, presence: true
	validates :contrasena, presence: true
	validates :tipo, presence: true
end
