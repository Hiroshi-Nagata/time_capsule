class ChangeTelephoneToAddresses < ActiveRecord::Migration[5.2]
  def change
    change_column :addresses, :telephone, :string
  end
end
