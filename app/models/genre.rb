class Genre < ApplicationRecord
  has_many :books_genres
  has_many :books, through: :books_genres

  validates :name, presence: true
  validates :name, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
end
