class Cream < ApplicationRecord
  has_many :cream_ingredients
  has_many :ingredients, through: :cream_ingredients

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :size, presence: true
  
end
