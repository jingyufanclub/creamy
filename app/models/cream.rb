class Cream < ApplicationRecord


  has_many :cream_ingredients
  has_many :ingredients, through: :cream_ingredients

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :size, presence: true

  def cost_per_unit
    price.to_f / size.to_f
  end

end
