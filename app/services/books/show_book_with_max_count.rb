module Books
  class ShowBookWithMaxCount
    def self.call
      Book.where(quantity: Book.maximum(:quantity)).first
    end
  end
end