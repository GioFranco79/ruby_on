class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.string :mail
      t.string :clave
      t.references :rol, null: false, foreign_key: true

      t.timestamps
    end
  end
end
