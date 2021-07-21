class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.string :mail
      t.string :clave

      t.timestamps
    end
  end
end
