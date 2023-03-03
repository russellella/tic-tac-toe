require_relative "lib/board"
require_relative "lib/game"
require_relative "lib/player"

player1 = Player.new("Player 1", "X")
player2 = Player.new("Player 2", "O")
testboard = Board.new
game = Game.new(testboard)
game.add_players(player1)
game.add_players(player2)
game.play