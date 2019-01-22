class ContentAddress < ApplicationRecord
  validates :content_id, { presence:true }
  validates :address_id, { presence:true }
  
  belongs_to :content
  belongs_to :address
end
