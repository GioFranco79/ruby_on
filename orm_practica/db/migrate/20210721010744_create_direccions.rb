class CreateDireccions < ActiveRecord::Migration[6.1]
  def change
    create_table :direccions do |t|
      t.string :calle
      t.string :ciudad
      t.string :estado
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
