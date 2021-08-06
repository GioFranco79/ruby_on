class CreateProfesionals < ActiveRecord::Migration[6.1]
  def change
    create_table :profesionals do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.string :fono
      t.string :email
      t.string :titulo
      t.string :especialidad     
      t.date :fnac
      t.integer :tipo

      t.timestamps
    end
  end
end
