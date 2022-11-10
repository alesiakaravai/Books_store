module Books
  class ShowBookInGivenPeriodAndCount
    def self.call
      Book.where(year: 1990..2000).where(quantity: 3..)
    end
  end
end
