# frozen_string_literal: true

class AddUserIdToPaintings < ActiveRecord::Migration[7.1]
  def change
    add_column :paintings, :user_id, :integer
  end
end
