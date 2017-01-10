class Ingredient < ApplicationRecord
  has_many :cream_ingredients
  has_many :creams, through: :cream_ingredients
  validates :name, presence: true, uniqueness: { case_sensitive: false }


  def best_best
    if best
      "&#x2605;"
    end
  end

  def self.order_by_name
    order("lower(name)")
  end
end
