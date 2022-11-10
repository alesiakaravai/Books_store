module Books
  class ShowBookIdAndDateInFirstYear
    def self.call
      min = Subscription.minimum(:start)
      Subscription.where(start: (min..DateTime.new(min.to_date.year, 12, 31))).pluck(:book_id, :start)
    end
  end
end