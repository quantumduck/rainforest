class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :reviewed_products, through: :reviews, source: :product
  has_many :created_products, class_name: "Product", foreign_key: "creator_id"

  def name
    email.split('@').first
  end
end
