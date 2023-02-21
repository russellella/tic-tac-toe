
#Opening instructions:
"Instructions: Give the coordinants where you want to place your mark, i.e. A1."
"Player 1 is X. Player 2 is O."

#Setup board

#Setup players
player1 = Player.new("Player 1", "X")
player2 = Player.new("Player 2", "O")

#Game loop?
while check_empty(board)
  display(bboard)



# class for board?
class Board

  # Display Board
  def display(arr)
   arr.each_slice(3).to_a.each do |one, two, three|
     puts "#{one} | #{two} | #{three}"
    end
  end

  #Creates a blank board
  def blank_board
    board = Array.new(9) { "_" }
  end
end

# class for players
class Player(name, mark)
  def initialize
    @name = name
    @mark = mark
  end
end

# Check for empty spaces
def check_empty(arr)
  arr.any? { |a| a.include?("_") }
end


# method for checking win/tie - need to fix for new board layout
def check_board(arr)
  if arr[0][0] == arr[0][1] && arr[0][1] == arr[0][2]
    game_over(arr[0][0])
  elsif arr[1][0] == arr[1][1] && arr[1][1] == arr[1][2]
    game_over(arr[1][0])
  elsif arr[2][0] == arr[2][1] && arr[2][1] == arr[2][2]
    game_over(arr[2][0])
  elsif arr[0][0] == arr[1][0] && arr[1][0] == arr[2][0]
    game_over(arr[0][0])
  elsif arr[0][1] == arr[1][1] && arr[1][1] == arr[2][1]
    game_over(arr[0][1])
  elsif arr[0][2] == arr[1][2] && arr[1][2] == arr[2][2]
    game_over(arr[0][2])
  elsif arr[0][0] == arr[1][1] && arr[1][1] == arr[2][2]
    game_over(arr[0][0])
  elsif arr[2][0] == arr[1][1] && arr[1][1] == arr[0][2]
    game_over(arr[2][0])
  else
    game_over("Tie")
  end
end

#Turns
# class for turn?
def turn()
if check_empty(board) == false
  check_board(board)
else
  # Prompt player input
  puts "#{player}'s turn. Where do you want to place your mark?"
  input = gets.chomp
end



# Place player mark
  #player input at correct index:
  board[player_input - 1] = "X"

#Game Over
def game_over(mark)
  if mark = "X"
    puts "Game Over - Player 1 Wins!"
  elsif mark = "O"
    puts "Game Over - Player 2 Wins!"
  elsif mark = "Tie"
    puts "Game Over - It's a tie!"
  else
    puts "Error - game_over"
  end
end
