class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user

  scope :latest, -> { order(created_at: :desc).limit(10) }
end
