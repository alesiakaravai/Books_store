module Books
  class ShowBookIdAndDateInSummer
    def self.call
      Subscription.where(start: (DateTime.new(2012, 6, 1)...DateTime.new(2012, 9,1))).pluck(:book_id, :start)
    end
  end
end