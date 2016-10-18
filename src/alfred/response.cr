require "json"
module Alfred
  class Response
    def initialize
      @items = [] of Item
    end

    def <<(item : Item)
      @items << item
    end

    def to_json
      wrapper = {items: @items}
      wrapper.to_json
    end
  end
end