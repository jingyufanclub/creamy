class Ingredient < ApplicationRecord
  has_many :cream_ingredients
  has_many :creams, through: :cream_ingredients

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
