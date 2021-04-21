class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :book
  
  validate :only_one_time_favorite
  
  def only_one_time_favorite
    if Favorite.find_by(user_id: user_id, book_id: book_id).present?
      errors.add(:user_id, "You can have only one favorite for same book")
    end
  end
end
