require "./spec_helper"

describe Alfred do
  # TODO: Write tests

  it "should be an empty array by default" do
    Alfred::Response.new.to_json.should eq("{\"items\":[]}")
  end

  it "should serialize items correctly" do
    response = Alfred::Response.new
    response << Alfred::Item.new("title", "subtitle", "arg", Alfred::Icon.new("icon","icon.png"))
    expected = "{\"items\":[{\"title\":\"title\",\"subtitle\":\"subtitle\",\"arg\":\"arg\",\"icon\":{\"type\":\"icon\",\"path\":\"icon.png\"}}]}"
    response.to_json.should eq(expected)
  end
end
