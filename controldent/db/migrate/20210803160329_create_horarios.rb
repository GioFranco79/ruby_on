class CreateHorarios < ActiveRecord::Migration[6.1]
  def change
    create_table :horarios do |t|
      t.string :rutayuda
      t.datetime :hentrada
      t.datetime :hsalida
      t.integer :box
      t.references :profesional, null: false, foreign_key: true
      t.references :centro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
