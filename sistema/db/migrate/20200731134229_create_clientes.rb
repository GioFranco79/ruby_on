class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :rut
      t.string :razon
      t.blob :logo
      t.string :fono
      t.string :email
      t.string :ciudad
      t.string :comuna
      t.string :direccion
      t.string :representante

      t.timestamps
    end
  end
end
