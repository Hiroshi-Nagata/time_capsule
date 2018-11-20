class CreateStaticFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :static_files do |t|
      t.string :mime_type
      t.string :file_name
      t.binary :data

      t.timestamps
    end
  end
end
