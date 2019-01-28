class Address < ApplicationRecord
  validates:user_id, { presence:true }
  validates:name, { presence:true }
  validates:email, { presence:true }
  
  belongs_to :user
  has_many :contents
end
