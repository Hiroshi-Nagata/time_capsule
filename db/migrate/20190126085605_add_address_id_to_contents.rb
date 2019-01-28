class AddAddressIdToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :address_id, :integer, null: false, default: 0
  end
end
