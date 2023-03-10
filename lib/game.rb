class Game
  def initialize(testboard)
    @tboard = testboard.gameboard
    @players = []
    @over = false
    puts "Instructions: Player 1 is X. Player 2 is O."
  end
  
  def add_players(player)
    @players << [player.name, player.mark]
  end

  def play
    while check_empty do
      @players.each do | player, mark |
        break if @over == true
        display(@tboard)
        puts "#{player} turn. Where do you want to place your mark?"
        input = gets.chomp.to_i
          if !input.between?(1, 9)
            puts "Uh oh! Try again. Where do you want to place your mark?"
            input = gets.chomp.to_i
          elsif @tboard[input - 1] != "_"
            puts "That spot is taken. Where do you want to place your mark?"
            input = gets.chomp.to_i
          end
        @tboard[input - 1] = "#{mark}"
        check_board(@tboard)
        end
      break if @over == true
    end
    
  end

  def check_empty
    @tboard.include? "_"
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
    elsif !check_empty
      game_over("Tie")
    end
  end

  def game_over(mark)
    if mark == "X"
      display(@tboard)
      puts "Game Over - Player 1 Wins!"
      @over = true
    elsif mark == "O"
      display(@tboard)
      puts "Game Over - Player 2 Wins!"
      @over = true
    elsif mark == "Tie"
      display(@tboard)
      puts "Game Over - It's a tie!"
      @over = true     
    end
  end

  def display(arr)
    arr.each_slice(3).to_a.each do |one, two, three|
     puts "#{one} | #{two} | #{three}"
    end
  end
end