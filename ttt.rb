

class Game
  def initialize
    # Player 1 & 2 created
    @player1 = Player.new("Player 1", "X")
    @player2 = Player.new("Player 2", "O")
    # Blank board created
    @gameboard = Board.new
    # Opening instructions go here?
    puts "Instructions: Player 1 is X. Player 2 is O."
  end

  def play
    while check_empty(gameboard)
      display(gameboard)
      #Get player input
      puts "Player 1's turn. Where do you want to place your mark?"
      input = gets.chomp
      # Check format
      unless input.between?(1, 9)
        puts "Uh oh! Try again. Where do you want to place your mark?"
      # Check if spot is empty
      if gameboard[player_input - 1] = "_"
        gameboard[player_input - 1] = #MARK
        check_board(gameboard)
      else
        puts "That spot is taken. Where do you want to place your mark?"
        # need to repeat back to prompt - how to do that?
      end
    end
end

# class for board?
class Board
  # need attr_accessor stuff here?
  def initialize
    board = Array.new(9) { "_" }
  end

  def display(arr)
   arr.each_slice(3).to_a.each do |one, two, three|
     puts "#{one} | #{two} | #{three}"
    end
  end

  def blank_board
    board = Array.new(9) { "_" }
  end

  def check_empty(arr)
    arr.any? { |a| a.include?("_") }
  end
end

def check_board(arr)
  if arr[0] == arr[1] && arr[1] == arr[2]
    game_over(arr[0])
  elsif arr[3] == arr[4] && arr[4] == arr[5]
    game_over(arr[3])
  elsif arr[6] == arr[7] && arr[7] == arr[8]
    game_over(arr[6])
  elsif arr[0] == arr[3] && arr[3] == arr[6]
    game_over(arr[0])
  elsif arr[1] == arr[4] && arr[4] == arr[7]
    game_over(arr[1])
  elsif arr[2] == arr[5] && arr[5] == arr[8]
    game_over(arr[2])
  elsif arr[0] == arr[4] && arr[4] == arr[8]
    game_over(arr[0])
  elsif arr[2] == arr[4] && arr[4] == arr[6]
    game_over(arr[2])
  else
    #???
  end
end

#Game Over
def game_over(mark)
  if mark == "X"
    puts "Game Over - Player 1 Wins!"
  elsif mark == "O"
    puts "Game Over - Player 2 Wins!"
  elsif mark == "Tie"
    puts "Game Over - It's a tie!"
  else
    puts "Error - game_over"
  end
end


class Player
  def initialize
    @name = name
    @mark = mark
  end
end