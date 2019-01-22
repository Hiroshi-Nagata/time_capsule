class HomeController < ApplicationController
  before_action :logged_in_user
  
  def index
    @user = User.find_by(params[:id])
    @static_file = StaticFile.new
  end
  
end
