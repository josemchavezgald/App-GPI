class Pedido < ApplicationRecord

	validates :material, presence: true
	validates :cantidad, presence: true
end
