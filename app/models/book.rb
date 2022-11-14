class Book < ApplicationRecord
  has_many :books_genres
  has_many :genres, through: :books_genres
  has_many :authors_books
  has_many :authors, through: :authors_books
  has_many :subscriptions

  validates :name, :year, :quantity, presence: true
  validates :name, length: { maximum: 150 }
end
