class CreateEdicions < ActiveRecord::Migration[6.1]
  def change
    create_table :edicions do |t|
      t.date :fechad
      t.references :libro, null: false, foreign_key: true
      t.references :autor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
