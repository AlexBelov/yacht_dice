require '../lib/turn'
require '../lib/player'
require '../lib/dice'

player = Player.new "Player"

turn = Turn.new player
turn.roll

turn.rolls [1,2,3,4,5]
p "#{turn.count [1,2,3,4,5]} should return 40"
p "#{turn.count [2,3,4,5,6]} should return 40"
p "#{turn.count [3,2]} should return 25"
turn.rolls [5,5,5,5,5]
p "#{turn.count [5]} should return 50"
turn.points 50
p "#{turn.combination} should return yacht"
turn.points 40
p "#{turn.combination} should return straight"
turn.points 25
p "#{turn.combination} should return full house"
turn.points 0
p "#{turn.combination} should return nothing"