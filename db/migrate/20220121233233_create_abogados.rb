class CreateAbogados < ActiveRecord::Migration[7.0]
  def change
    create_table :direccion do |t|
      t.integer :casos
      t.text :descripcion
      t.decimal :calificacion
      t.references :direccion, null: false, foreign_key: true

      t.timestamps

    end
  end
end
