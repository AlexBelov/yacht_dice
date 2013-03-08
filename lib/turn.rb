class Turn
  attr_reader :points
  
  def initialize player
    @player = player
    @rolls = []
    @points = 0
    @dice = Dice.new
  end

  def roll
    repeat = []
    5.times {@rolls.push @dice.roll}
    rolls = Array.new @rolls
    rolls.sort!

    while rolls.size > 0
      repeat << (rolls.rindex rolls.first) - (rolls.index rolls.first) + 1
      rolls.delete rolls.first
    end

    self.count repeat.sort!.reverse!
    @player.add_points @points

    puts "#{@player.name} roll #{@rolls} and earn #{@points} points"
  end

  def count repeat
   @rolls.each {|roll| @points += roll} if repeat[0] == 4
   @points = 25 if repeat[0] == 3 and repeat[1] == 2
   @points = 40 if @rolls == [1,2,3,4,5]
   @points = 50 if repeat[0] == 5
  end
end