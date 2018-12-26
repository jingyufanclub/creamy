class Ingredient < ApplicationRecord
  has_many :cream_ingredients
  has_many :creams, -> { order('lower(name)') }, through: :cream_ingredients
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  default_scope { order('lower(name)') }


  def best_best
    if best
      "&#x2605;"
    end
  end

end
