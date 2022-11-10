module Books
  class ShowCountBooksInYear
    def self.call
      Subscription.group("strftime('%Y', start)").count
    end
  end
end