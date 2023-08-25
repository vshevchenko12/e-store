# frozen_string_literal: true

module PaintingsHelper
  def painting_author(painting)
    user_signed_in? && current_user.id == painting.user_id
  end
end
