class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :contrasena
      t.references :direccion, null: false, foreign_key: true
      t.references :direccion, null: false, foreign_key: true
      t.timestamps

    end
  end
end
