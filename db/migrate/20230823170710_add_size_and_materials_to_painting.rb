# frozen_string_literal: true

class AddSizeAndMaterialsToPainting < ActiveRecord::Migration[7.1]
  def change
    add_column :paintings, :size, :string
    add_column :paintings, :materials, :string
  end
end
