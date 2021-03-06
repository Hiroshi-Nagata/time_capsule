class ApplicationController < ActionController::Base
  include LoginHelper
  
  protect_from_forgery with: :exception

  add_flash_types :success, :info, :warning, :danger
  
  private
  
  def logged_in_user
    unless logged_in?
      flash[:danger] = "ログインしてください"
      redirect_to login_url
    end
  end

end
