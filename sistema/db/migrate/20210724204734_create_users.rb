class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.date :fechanac
      t.string :fono
      t.string :email
      t.string :password_digest
      t.integer :tipo
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
