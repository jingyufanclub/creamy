class StaticController < ApplicationController
  def index

    @sum = Cream.sum("price*times_purchased")

    if current_user
      @user = User.find_by(id: current_user).name.capitalize
    end

  end
end
