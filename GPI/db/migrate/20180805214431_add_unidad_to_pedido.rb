class AddUnidadToPedido < ActiveRecord::Migration[5.1]
  def change
    add_column :pedidos, :unidad, :string
  end
end
