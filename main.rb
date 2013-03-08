require './lib/dice'
require './lib/player'
require './lib/turn'
require './lib/game'

p "Welcome to Yacht Dice!"
p "Number of players?"
n = gets
game = Game.new n.to_i
game.play
game.top
game.winner