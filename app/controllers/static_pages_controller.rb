class StaticPagesController < ApplicationController
  
  def top
    if logged_in?
      redirect_to controller: 'home', action: 'index'
    end
  end
  
end
