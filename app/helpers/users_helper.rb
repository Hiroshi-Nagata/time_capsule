module UsersHelper
  
  def user_options
    if current_user.admin.admin?
      User.all
    else
      User.where(id: current_user.id)
    end
  end

end