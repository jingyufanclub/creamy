class Cream < ApplicationRecord
  has_many :cream_ingredients
  has_many :ingredients, through: :cream_ingredients
  accepts_nested_attributes_for :ingredients

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :price, presence: true, numericality: true
  validates :size, presence: true, numericality: true

  def cost_per_unit
    '%.2f' % (price.to_f / size.to_f)
  end

  def fave
    if favorite
      "&hearts;"
    end
  end

  def rotation
    if current_rotation
      "&#9789;"
    end
  end
end
