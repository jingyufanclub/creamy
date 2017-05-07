class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(name: params[:user][:name].downcase)
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:notice] = "This app is read-only right meow."
      render :new
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
