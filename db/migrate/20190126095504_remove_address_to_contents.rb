class RemoveAddressToContents < ActiveRecord::Migration[5.2]
  def change
    remove_column :contents, :address, :string
  end
end
