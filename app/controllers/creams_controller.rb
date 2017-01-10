class CreamsController < ApplicationController

  def index
    @creams = Cream.all
  end

  def show
    set_cream
  end

  def new
    @cream = Cream.new
    @ingredients = Ingredient.order("lower(name)").all
  end

  def create
    @cream = Cream.new(cream_params)
    if !params[:cream][:ingredient][:name].empty?
      @ingredient = Ingredient.find_or_create_by(name: params[:cream][:ingredient][:name])
      @cream.ingredients << @ingredient
    end
    if @cream.save
      redirect_to cream_path(@cream)
    else
      @ingredients = Ingredient.order("lower(name)").all
      render :new
    end
  end

  def edit
    set_cream
    @ingredients = Ingredient.order("lower(name)").all
  end

  def update
    set_cream
    if @cream.update(cream_params)
      if !params[:cream][:ingredient][:name].empty?
        @ingredient = Ingredient.find_or_create_by(name: params[:cream][:ingredient][:name])
        @cream.ingredients << @ingredient
      end
      redirect_to cream_path(@cream)
    else
      @ingredients = Ingredient.order("lower(name)").all
      render :edit
    end
  end

  def destroy
    set_cream.destroy
    redirect_to creams_path
  end

  private
  def set_cream
    @cream = Cream.find(params[:id])
  end

  def cream_params
    params.require(:cream).permit(:name, :brand, :cream_type, :price, :size, :notes, :favorite, ingredient_ids: [], ingredient_attributes: [:id, :name])
  end
end
