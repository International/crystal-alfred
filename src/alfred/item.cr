require "json"
# require "./icon"

module Alfred
  class Item
    JSON.mapping(title: String, subtitle: String, arg: String, icon: Icon)

    @title : String
    @subtitle : String
    @arg : String
    @icon : Icon

    def initialize(@title, @subtitle, @arg, @icon)
    end

  end
end