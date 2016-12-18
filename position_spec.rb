require "minitest/spec"
require "minitest/autorun"
require "./position"

describe Position do
  it "defines equality" do
    Position.new(x: 5, y: -1).must_equal Position.new(x: 5, y: -1)
    Position.new(x: 5, y: -1).wont_equal Position.new(x: 4, y: -1)
    Position.new(x: 5, y: -1).wont_equal Position.new(x: 5, y: -2)
  end

  it "can be created from a string" do
    Position.from_string("E11").must_equal Position.new(x: 11, y: 0)
  end

  it "understands addition" do
    sum = Position.new(x: -5, y: 10) + Position.new(x: 3, y: -5)
    sum.must_equal Position.new(x: -2, y: 5)
  end
end
