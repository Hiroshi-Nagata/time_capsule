class User < ApplicationRecord
  validates:password, { presence:true }
  has_secure_password
  extend Enumerize
  enumerize :gender, in: { male: 1, female: 2}
end
