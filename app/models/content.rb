class Content < ApplicationRecord
  validates :user_id, { presence:true }
  validates :titile, { presence:true }
  validates :format, { presence:true }
  validate :validate_send_contents
  validates :address, { presence:true }
  validates :sender, { presence:true }
  validates :send_at, { presence:true }
  validates :received_at, { presence:true }
  
  belongs_to :user
  has_many :content_addresses
  has_and_belongs_to_many :addresses
  belongs_to :static_file
  
  extend Enumerize
  enumerize :shared, in: { private: 0, public: 1 }

  def validate_send_contents
    if movie_file_id.blank? && voice_file_id.blank? && text.blank?
      errors.add(:validate_send_contents, ": 送信するコンテンツが指定されていません。")
      # errors.add(:movie_file_id, ": 送信するコンテンツが指定されていません。")
      # errors.add(:voice_file_id, ": 送信するコンテンツが指定されていません。")
      # errors.add(:text, ": 送信するコンテンツが指定されていません。")
    end
  end
end
