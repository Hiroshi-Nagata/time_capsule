class PresentController < ApplicationController
  
  def show
    @content = Content.find_by(id: params[:content_id])
  end

end