# frozen_string_literal: true

module ApplicationHelper
  def cart_count_over_one
    total_cart_items if total_cart_items.positive?
  end

  def total_cart_items
    total = @cart.line_items.map(&:quantity).sum
    total if total.positive?
  end
end
