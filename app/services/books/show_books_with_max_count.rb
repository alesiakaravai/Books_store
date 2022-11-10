module Books
  class ShowBooksWithMaxCount
    def self.call
      Book.where(quantity: Book.maximum(:quantity))
    end
  end
end