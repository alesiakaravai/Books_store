module Authors
  class ShowAll
    attr_accessor :params

    def initialize(params = {})
      @params = params
    end

    def call
      Author.all
    end
  end
end