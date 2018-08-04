class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
    	t.string :codigo
    	t.string :material
    	t.float :cantidad
    	t.string :solicitante
    	t.string :estado
    	t.text :detalles

      t.timestamps
    end
  end
end
