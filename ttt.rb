class Game
  def initialize
    @gameboard = Board.new
    puts "Instructions: Player 1 is X. Player 2 is O."
  end

  def play
    players = [["Player 1", "X"], ["Player 2", "O"]]
    while check_empty(@gameboard) do
      players.each do | player, mark |
        display(@gameboard)
        puts "#{player} turn. Where do you want to place your mark?"
        input = gets.chomp.to_i
          unless input.between?(1, 9) && gameboard[input - 1] = "_"
            puts "Uh oh! Try again. Where do you want to place your mark?"
            input = gets.chomp.to_i
          end
        gameboard[input - 1] = "#{mark}"
        check_board(gameboard)
        end
      end
    end
  end


  
class Board
  # need attr_accessor stuff here?
  def initialize
    @gameboard = Array.new(9) { "_" }
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
    arr.to_s.include? "_"
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
    puts "check_board error!"
  end
end

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

new_game = Game.new
new_game.play



### Other version - simplified: 
# Issues:
  # Terrible at OOP!!!
  # Game isn't stopping when a winner is declared.
  # No error when you try to put a mark in the same spot twice

gameboard = Array.new(9) { "_" }
class Game
  def initialize
    puts "Instructions: Player 1 is X. Player 2 is O."
  end

  def display(arr)
   arr.each_slice(3).to_a.each do |one, two, three|
     puts "#{one} | #{two} | #{three}"
    end
  end

  def check_empty(arr)
    arr.to_s.include? "_"
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

  end
end

def game_over(mark)
  if mark == "X"
    puts "Game Over - Player 1 Wins!"
  elsif mark == "O"
    puts "Game Over - Player 2 Wins!"
  elsif mark == "Tie"
    puts "Game Over - It's a tie!"
  else
    
  end
end

  def play(gameboard)
    players = [["Player 1", "X"], ["Player 2", "O"]]
    while check_empty(gameboard) do
      players.each do | player, mark |
        display(gameboard)
        puts "#{player} turn. Where do you want to place your mark?"
        input = gets.chomp.to_i
          unless input.between?(1, 9) && gameboard[input - 1] = "_"
            puts "Uh oh! Try again. Where do you want to place your mark?"
            input = gets.chomp.to_i
          end
        gameboard[input - 1] = "#{mark}"
        check_board(gameboard)
        end
      end
    end
  end

new_game = Game.new
new_game.play(gameboard)

