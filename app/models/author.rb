class Author < ApplicationRecord
  has_many :authors_books
  has_many :books, through: :authors_books

  attr_accessor :status

  validates :name, presence: { message: 'must be given please'}
  validates :name, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }

  before_validation :format_name
  after_validation :set_status
  before_save :test_before_save
  before_create :test_before_create

  private 

  def format_name
    p 'before_validation :format_name'
    self.name = name&.capitalize
  end

  def set_status
    p 'after_validation :set_status'
    self.status = errors.empty?
  end

  def test_before_save
    p 'before_save :test_before_save'

  end

  def test_before_create
    p 'before_create :test_before_create'
    
  end
end
