# frozen_string_literal: true

json.array! @paintings, partial: 'paintings/painting', as: :painting
