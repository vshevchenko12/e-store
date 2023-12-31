# frozen_string_literal: true

class LineItem < ApplicationRecord
  belongs_to :painting
  belongs_to :cart

  #  for the same items
  def total_price
    painting.price.to_i * quantity.to_i
  end
end
