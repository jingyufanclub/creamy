class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :jing

  def jing
   session[:user_id]
  end

end
