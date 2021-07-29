class CreateLibros < ActiveRecord::Migration[6.1]
  def change
    create_table :libros do |t|
      t.string :nombre
      t.string :editorial
      t.integer :anho

      t.timestamps
    end
  end
end
