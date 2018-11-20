class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.integer :user_id
      t.string :title
      t.string :format
      t.integer :movie_file_id
      t.integer :voice_file_id
      t.text :text
      t.string :address
      t.string :sender
      t.datetime :send_at
      t.datetime :post_at
      t.datetime :received_at

      t.timestamps
    end
  end
end
