class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :purpose
      t.boolean :best, default: false
      t.timestamps
    end
  end
end
