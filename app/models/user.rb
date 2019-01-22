class User < ApplicationRecord
  validates:name, { presence:true }
  validates:email, { presence:true }
  has_secure_password
  
  has_many :addresses
  has_many :contents
  
  extend Enumerize
  enumerize :gender, in: { unknown: 0, male: 1, female: 2 }
  enumerize :admin, in: { user: 0, admin: 1 }
end
