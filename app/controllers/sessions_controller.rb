class SessionsController < ApplicationController
  def new

  end

  def create
      @user = User.find_by(name: params[:user][:name].downcase)
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

  private

  def session_params
    params.require(:user).permit(:name)
  end
end
