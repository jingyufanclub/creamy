class Cream < ApplicationRecord
  has_many :cream_ingredients
  has_many :ingredients, through: :cream_ingredients
end
