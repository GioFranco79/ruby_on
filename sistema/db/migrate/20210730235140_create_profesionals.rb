class CreateProfesionals < ActiveRecord::Migration[6.1]
  def change
    create_table :profesionals do |t|
      t.string :titulo
      t.string :especialidad
      t.string :ciudad
      t.string :comuna
      t.string :direccion
      t.string :email
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
