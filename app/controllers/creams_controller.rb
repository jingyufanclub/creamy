class CreamsController < ApplicationController

  def index
    @creams = Cream.all
  end

  def show
    set_cream
  end

  private

  def set_cream
    @cream = Cream.find(params[:id])
  end
end
