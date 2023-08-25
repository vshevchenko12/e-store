# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_painting(painting)
    current_item = line_items.find_by(painting_id: painting.id)
    if current_item
      current_item.increment(:quantity)
    else
      current_item = line_items.build(painting_id: painting.id)
    end
    current_item
  end

  def total_price
    line_items.to_a.sum(&:total_price)
  end
end
