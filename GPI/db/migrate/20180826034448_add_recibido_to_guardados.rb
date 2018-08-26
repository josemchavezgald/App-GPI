class AddRecibidoToGuardados < ActiveRecord::Migration[5.1]
  def change
    add_column :guardados, :recibido, :string
  end
end
