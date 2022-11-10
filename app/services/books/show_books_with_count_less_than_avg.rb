module Books
  class ShowBooksWithCountLessThanAvg
    def self.call
      Book.where.not(quantity: Book.average(:quantity)..)
    end
  end
end