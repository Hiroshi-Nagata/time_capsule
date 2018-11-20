class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.integer :telephone

      t.timestamps
    end
  end
end
