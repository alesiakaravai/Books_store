module Subscriptions
  class ShowAvgDaysWhenIsActiveFalse
    def self.call
      days_of_using = Subscription.where(is_active: false).group("julianday(finish) - julianday(start)")
      days_of_using.count.keys.sum / days_of_using.length
    end
  end
end