class Product < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  belongs_to :creator, class_name: "User"

  validates :description, :name, presence: true
  validates :price_in_cents, numericality: {only_integer: true,
                                            greater_than_or_equal_to: 0}

  def price
    dollars = (price_in_cents / 100).to_s
    padding = ((price_in_cents % 100) < 10)? ".0": "."
    cents = (price_in_cents % 100).to_s
    '$' + dollars + padding + cents
  end

  def short_description(max_length)
    if description.length < max_length
      description.split("\n").first
    elsif description.split("\n").first.length <= (max_length - 3)
      description.split("\n").first + "..."
    else
      description.split("\n").first[0, max_length - 3] + "..."
    end
  end

  def formatted_price
    price_in_dollars = price_in_cents.to_f / 100
    sprintf("%.2f", price_in_dollars)
  end

end
