# frozen_string_literal: true

json.extract! painting, :id, :title, :description, :price, :created_at, :updated_at
json.url painting_url(painting, format: :json)
