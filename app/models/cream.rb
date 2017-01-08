class Cream < ApplicationRecord
  has_many :cream_ingredients
  has_many :ingredients, through: :cream_ingredients

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :price, presence: true
  validates :size, presence: true

  def cost_per_unit
    '%.2f' % (price.to_f / size.to_f)
  end

end
