class CreateHorarios < ActiveRecord::Migration[6.1]
  def change
    create_table :horarios do |t|
      t.string :dia
      t.integer :box 
      t.datetime :hentrada
      t.datetime :hsalida
      t.references :profesional, null: false, foreign_key: true
      t.references :centro

      t.timestamps
    end
  end
end
