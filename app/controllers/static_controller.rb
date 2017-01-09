class StaticController < ApplicationController
  def index
    @sum = Cream.sum(:price)
  end
end
