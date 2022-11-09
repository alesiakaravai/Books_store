module Genres
  class ShowAll
    attr_accessor :params

    def initialize(params = {})
      @params = params
    end

    def call
      Genre.all
    end
  end
end