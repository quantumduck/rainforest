class Product < ApplicationRecord

  def price
    dollars = (price_in_cents / 100).to_s
    padding = ((price_in_cents % 100) < 10)? ".0": "."
    cents = (price_in_cents % 100).to_s
    '$' + dollars + padding + cents
  end

end
