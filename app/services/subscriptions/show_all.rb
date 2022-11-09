module Subscriptions
  class ShowAll
    attr_accessor :params

    def initialize(params = {})
      @params = params
    end

    def task_214a
      Subscription.where(is_active: true).count
    end

    def task_214b
      Subscription.where(is_active: true).group(:book_id).uniq.count
    end

    def task_214TSK.A
      Subscription.count
    end

    def task_214TSK.B
      Subscription.group(:subscriber_id).uniq.count
    end
  end
end