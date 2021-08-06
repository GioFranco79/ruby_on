class CreatePacientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pacientes do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.string :fono
      t.string :email
      t.date :fechanac
      t.string :prevision

      t.timestamps
    end
  end
end
