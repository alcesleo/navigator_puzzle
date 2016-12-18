class Position
  attr_reader :x, :y

  def self.from_string(str)
    direction = str.chars.first
    magnitude = str.chars.drop(1).join.to_i

    case direction
    when "N" then Position.new(y: magnitude, x: 0)
    when "S" then Position.new(y: -magnitude, x: 0)
    when "E" then Position.new(x: magnitude, y: 0)
    when "W" then Position.new(x: -magnitude, y: 0)
    end
  end

  def initialize(x:, y:)
    @x, @y = x, y
  end

  def ==(other)
    x == other.x && y == other.y
  end

  def +(other)
    Position.new(x: x + other.x, y: y + other.y)
  end

  def to_s
    "x: #{x}, y: #{y}"
  end
end
