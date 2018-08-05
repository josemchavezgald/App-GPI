class CreateCompras < ActiveRecord::Migration[5.1]
  def change
    create_table :compras do |t|
      t.string :producto
      t.string :provedor
      t.decimal :precio

      t.timestamps
    end
  end
end
