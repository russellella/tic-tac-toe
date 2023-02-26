class Game
  def initialize
    # Do these need the @?
    @gameboard = Board.new
    @players = Array.new
    @player1 = Player.new("Player 1", "X")
    @player2 = Player.new("Player 2", "O")
    players << @player 1
    puts "Instructions: Player 1 is X. Player 2 is O."
  end

  # Play
  def play
    # This needs to change - make array still?
    players = [["Player 1", "X"], ["Player 2", "O"]]
    while check_empty(@gameboard) do
      players.each do | player, mark | # Not sure this is correct or works well
        gameboard.display
        puts "#{player} turn. Where do you want to place your mark?"
        input = gets.chomp.to_i
          unless input.between?(1, 9) && @gameboard[input - 1] = "_"
            puts "Uh oh! Try again. Where do you want to place your mark?"
            input = gets.chomp.to_i
          end
        gameboard[input - 1] = "#{mark}"
        check_board(gameboard)
        end
        # Add a break for check board? or...?
      end
    end
    
    # Rename and fix!
    def check_empty_space(arr)
      arr.to_s.include? "_"
    end

    # Check board for wins
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
        # Fix/remove game_end
      elsif game_end == true && !check_empty(gameboard)
        game_over("Tie")
      end

      # Game Over
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

  end
  
class Board
  def initialize
    @gameboard = Array.new(9) { "_" }
  end

  def display(arr)
   arr.each_slice(3).to_a.each do |one, two, three|
     puts "#{one} | #{two} | #{three}"
    end
  end
end

class Player
  def initialize(name, mark)
    @name = name
    @mark = mark
  end
end


new_game = Game.new
new_game.play