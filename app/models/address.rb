class Address < ApplicationRecord
  validates:user_id, { presence:true }
  validates:name, { presence:true }
  validates:email, { presence:true }
end
