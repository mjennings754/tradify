class User < ApplicationRecord
  has_secure_password
  enum :role, {homeowner:0, tradesperson:1, mod:2}
end
