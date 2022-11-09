module Books
  class ShowAll
    attr_accessor :params

    def initialize(params = {})
      @params = params
    end
    
    def task_217a
      Book.where(year: 1990..2000).where(quantity: 3..)
    end

    def task_217b
      
    end
  end
end