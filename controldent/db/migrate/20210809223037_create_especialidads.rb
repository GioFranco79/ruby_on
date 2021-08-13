class CreateEspecialidads < ActiveRecord::Migration[6.1]
  def change
    create_table :especialidads do |t|
      t.string :nomesp
      t.references :profesional, null: false, foreign_key: true
      t.references :centro, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
