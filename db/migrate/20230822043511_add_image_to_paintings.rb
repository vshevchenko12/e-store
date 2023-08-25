# frozen_string_literal: true

class AddImageToPaintings < ActiveRecord::Migration[7.1]
  def change
    add_column :paintings, :image, :string
  end
end
