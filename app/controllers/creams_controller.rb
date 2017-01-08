class CreamsController < ApplicationController

  def index
    @creams = Cream.all
  end

  def show
    set_cream
  end

  def new
    @cream = Cream.new
  end

  def create
    @cream = Cream.new(cream_params)
    if @cream.valid?
      @cream.save
      redirect_to cream_path(@cream)
    else
      render 'new'
    end
  end

  def edit
    set_cream
  end

  def update
    set_cream
    if @cream.update(cream_params)
      redirect_to cream_path(@cream)
    else
      render 'edit'
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
    params.require(:cream).permit(:name, :brand, :cream_type, :price, :size, :notes, :favorite)
  end
end
