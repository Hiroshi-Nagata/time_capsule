class Content < ApplicationRecord
  validates :user_id, { presence:true }
  validates :title, { presence:true }
 # validate :validate_send_contents
  validates :address_id, { presence:true }
  validates :sender, { presence:true }
  validates :send_at, { presence:true }
  
  belongs_to :user
  belongs_to :static_file
  belongs_to :address
  
  extend Enumerize
  enumerize :shared, in: { private: 0, public: 1 }
  enumerize :status, in: { wait: 0, success: 1, error: 2}

#  def validate_send_contents
#    if movie_file_id.blank? && voice_file_id.blank? && text.blank?
#      errors.add(:validate_send_contents, ": 送信するコンテンツが指定されていません。")
      # errors.add(:movie_file_id, ": 送信するコンテンツが指定されていません。")
      # errors.add(:voice_file_id, ": 送信するコンテンツが指定されていません。")
      # errors.add(:text, ": 送信するコンテンツが指定されていません。")
#    end
#  end
end
