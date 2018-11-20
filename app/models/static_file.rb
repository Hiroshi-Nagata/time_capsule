class StaticFile < ApplicationRecord
  validates :mime_type, { presence:true }
  validates :file_name, { presence:true }
  validates :data, { presence:true }
end
