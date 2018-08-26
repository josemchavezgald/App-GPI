class CreateGuardados < ActiveRecord::Migration[5.1]
  def change
    create_table :guardados do |t|

    	t.string :cosa
    	t.decimal :cantidad
    	t.string :detalles

      t.timestamps
    end
  end
end
