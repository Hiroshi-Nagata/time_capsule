module AddressesHelper
  
  def address_options
    if current_user.admin.admin?
      Address.all
    else
      Address.where(user_id: current_user.id)
    end
  end
  
end
