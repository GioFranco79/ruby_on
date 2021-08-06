class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.string :fono
      t.string :email
      t.string :password
      t.integer :tipo
      t.references :cliente, null: false, foreign_key: true
      t.references :centro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
