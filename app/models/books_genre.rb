class BooksGenre < ApplicationRecord
  belongs_to :book
  belongs_to :genre
end

#validates :book_id, uniqueness:{scope: :genre_id}