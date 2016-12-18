require "./position"

class Navigator
  attr_reader :position

  def initialize(position = Position.new(x: 0, y: 0))
    @position = position
  end

  def navigate(path)
    parse_path(path).each do |relative_position|
      self.position += relative_position
    end
  end

  private

  attr_writer :position

  def parse_path(path)
    path.split(", ").map { |instruction| Position.from_string(instruction) }
  end
end
