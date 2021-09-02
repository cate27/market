class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.string :titolo
      t.text :descrizione
      t.decimal :price

      t.timestamps null: false
    end
  end
end
