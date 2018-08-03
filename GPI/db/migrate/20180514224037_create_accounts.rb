class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :nombre
      t.string :contrasena
      t.string :tipo

      t.timestamps
    end
  end
end
