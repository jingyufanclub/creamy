require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'creams.csv'))
creams = CSV.parse(csv_text, :headers => true, :encoding => 'utf-8')

creams.each do |row|
  c = Cream.new
  c.name = row['name']
  c.brand = row['brand']
  c.cream_type = row['cream_type']
  c.price = row['price']
  c.size = row['size']
  c.notes = row['notes']
  c.favorite = row['favorite']
  c.save

  row['ingredients'].split(", ").each do |ing|
    i = Ingredient.find_or_create_by(name: ing)
    i.name = ing
    i.save

    ci = CreamIngredient.new
    ci.cream_id = c.id
    ci.ingredient_id = i.id
    ci.save
  end
end
