class CreateCreams < ActiveRecord::Migration[5.0]
  def change
    create_table :creams do |t|
      t.string :name
      t.string :brand
      t.string :cream_type
      t.decimal :price
      t.integer :size
      t.string :notes

      t.timestamps
    end
  end
end
