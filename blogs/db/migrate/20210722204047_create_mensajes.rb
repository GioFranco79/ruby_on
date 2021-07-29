class CreateMensajes < ActiveRecord::Migration[6.1]
  def change
    create_table :mensajes do |t|
      t.string :autor
      t.text :mensaje
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
