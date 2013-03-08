class Player
  attr_reader :name, :points

  def initialize name
    @name = name
    @points = 0
  end

  def add_points points
    @points += points
  end
end