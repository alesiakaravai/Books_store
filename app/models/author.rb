class Author < ApplicationRecord
  has_many :authors_books
  has_many :books, through: :authors_books

  validates :name, presence: { message: 'must be given please'}
  validates :name, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
end
