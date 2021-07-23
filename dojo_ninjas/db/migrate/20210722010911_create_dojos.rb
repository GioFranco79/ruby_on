class CreateDojos < ActiveRecord::Migration[6.1]
  def change
    create_table :dojos do |t|
      t.string :nombre
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
