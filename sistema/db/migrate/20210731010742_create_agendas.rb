class CreateAgendas < ActiveRecord::Migration[6.1]
  def change
    create_table :agendas do |t|
      t.datetime :fagenda
      t.references :paciente, null: false, foreign_key: true
      t.references :profesional, null: false, foreign_key: true
      t.references :horario, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :centro, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
