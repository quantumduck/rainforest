class User < ApplicationRecord
  has_secure_password

  def name
    email.split('@').first
  end
end
