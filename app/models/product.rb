class Product < ApplicationRecord

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

end
