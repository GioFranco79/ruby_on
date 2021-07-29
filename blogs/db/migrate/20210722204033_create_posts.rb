class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :contenido
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
