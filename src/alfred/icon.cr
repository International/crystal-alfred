require "json"

module Alfred
  class Icon
    JSON.mapping(type: String, path: String)

    @type : String
    @path : String

    def initialize(@type, @path)
    end
  end
end
