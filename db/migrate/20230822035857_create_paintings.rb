# frozen_string_literal: true

class CreatePaintings < ActiveRecord::Migration[7.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 5, scale: 2, default: 0

      t.timestamps
    end
  end
end
