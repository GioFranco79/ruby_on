class CreateCentros < ActiveRecord::Migration[6.1]
  def change
    create_table :centros do |t|
      t.string :nombre
      t.string :ciudad
      t.string :fono
      t.string :email
      t.string :comuna
      t.string :direccion
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
