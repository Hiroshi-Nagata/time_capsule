class CreateContentAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :content_addresses do |t|
      t.integer :content_id
      t.integer :address_id

      t.timestamps
    end
  end
end
