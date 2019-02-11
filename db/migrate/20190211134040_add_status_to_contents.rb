class AddStatusToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :status, :integer, :null => false, :default  => 0
  end
end
