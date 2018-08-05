class AddTrabajoToPedido < ActiveRecord::Migration[5.1]
  def change
    add_column :pedidos, :trabajo, :string
  end
end
