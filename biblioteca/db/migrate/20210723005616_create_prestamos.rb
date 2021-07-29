class CreatePrestamos < ActiveRecord::Migration[6.1]
  def change
    create_table :prestamos do |t|
      t.date :fechad
      t.references :usuario, null: false, foreign_key: true
      t.references :libro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
