class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
    set_ingredient
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
