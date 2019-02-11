class RenamePostAtColumnToContents < ActiveRecord::Migration[5.2]
  def change
    rename_column :contents, :post_at, :sent_at
  end
end
