module Books
  class ShowAll
    attr_accessor :params

    def initialize(params = {})
      @params = params
    end

    def call
      
    end

    def task_213a
      Book.count
    end

    def task_215a
      Book.sum(:quantity).to_f / Book.count(:quantity).to_f
    end
  end
end