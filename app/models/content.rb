class Content < ApplicationRecord
  validates :user_id, { presence:true }
  validates :title, { presence:true }
  validates :title, length: { maximum: 47 }
  validates :address_id, { presence:true }
  validates :sender, { presence:true }
  validates :send_at, { presence:true }
  validates :text, length: { maximum: 500 }
 
  belongs_to :user
  belongs_to :static_file
  belongs_to :address

  extend Enumerize
  enumerize :shared, in: { private: 0, public: 1 }
  enumerize :status, in: { wait: 0, success: 1, error: 2}
end
