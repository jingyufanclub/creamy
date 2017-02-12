class CreateCreamIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :cream_ingredients do |t|
      t.integer :cream_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
