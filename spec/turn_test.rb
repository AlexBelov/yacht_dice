require '../lib/turn'
require '../lib/player'
require '../lib/dice'

player = Player.new "Player"

turn = Turn.new player
turn.roll