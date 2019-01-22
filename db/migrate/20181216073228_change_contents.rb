class ChangeContents < ActiveRecord::Migration[5.2]
  def change
    remove_column :contents, :movie_file_id, :integer
    remove_column :contents, :voice_file_id, :integer
    add_column :contents, :static_file_id, :integer
  end
end
