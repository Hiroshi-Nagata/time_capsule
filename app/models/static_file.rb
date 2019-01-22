class StaticFile < ApplicationRecord
  validates :mime_type, { presence:true }
  validates :content_file, { presence:true }
  

  
  mount_uploader :content_file, ContentFileUploader
  
end
