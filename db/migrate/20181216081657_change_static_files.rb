class ChangeStaticFiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :static_files, :data, :binary
    rename_column :static_files, :file_name, :content_file
  end
end
