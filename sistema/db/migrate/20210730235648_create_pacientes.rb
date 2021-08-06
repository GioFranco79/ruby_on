class CreatePacientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pacientes do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.date :fechanac
      t.string :email
      t.string :fono

      t.timestamps
    end
  end
end
