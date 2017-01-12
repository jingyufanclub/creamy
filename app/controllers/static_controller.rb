class StaticController < ApplicationController
  def index
    @sum = Cream.sum("price*times_purchased")
  end
end
