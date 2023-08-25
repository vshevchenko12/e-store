# frozen_string_literal: true

class Painting < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user, optional: true
  has_many :line_items

  mount_uploader :image, ImageUploader
  serialize :image, JSON # If you use SQLite, add this line

  validates :title, :description, :price, presence: true
  validates :description, length: { maximum: 1000, too_long: '%<count>s characters is the maximum allowed.' }
  validates :title, length: { maximum: 140, too_long: '%<count>s characters is the maximum allowed.' }
  validates :price, numericality: { max_digits: 7 }

  private

  def not_referenced_by_any_line_item
    return if line_items.empty?

    errors.add(:base, 'Line items present')
    throw :abort
  end
end
