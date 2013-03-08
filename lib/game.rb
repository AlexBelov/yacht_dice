class Game
  def initialize n
    @players = []
    @turns = 13
    n.times {@players.push Player.new "Player#{n-=1}"}
  end

  def winner
    num = 0
    winner = @players.max_by {|player| player.points}
    @players.each {|player| num += 1 if player.points == winner.points}
    puts "\nThe game winner is #{winner.name} with #{winner.points} points" if num == 1
    puts "\nNo winners" if num != 1
  end

  def top
    players = Array.new @players
    players.sort_by! {|player| player.points}
    players.reverse!
    puts "\nPlayer's top"
    players.each {|player| puts "#{player.name} has #{player.points}"}
  end

  def play
    @turns.times {@players.each {|player| (Turn.new player).roll}}
  end
end