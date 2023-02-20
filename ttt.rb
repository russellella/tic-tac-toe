
# class for board
class Board

  # Display Board
  def display(arr)
    puts "  A   B   C"
    arr.each do |one, two, three|
      x = 1
      puts "#{x} #{one} | #{two} | #{three}"
      x += 1 #Not working - figure out how to increment for each row
    end
  end
  def blank_board
    #Creates a blank board
    bboard = [["_","_","_"],["_","_","_"],["_","_","_"]]
  end
end

#Need to fix how to display board - using class
p display(board)


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


# method for checking win/tie
def check_board(arr)
  # Checks wins:
  if arr[0][0] == arr[0][1] && arr[0][1] == arr[0][2]
  
  elsif arr[1][0] == arr[1][1] && arr[1][1] == arr[1][2]
    
  elsif arr[2][0] == arr[2][1] && arr[2][1] == arr[2][2]
  
  elsif arr[0][0] == arr[1][0] && arr[1][0] == arr[2][0]
  
  elsif arr[0][1] == arr[1][1] && arr[1][1] == arr[2][1]
  
  elsif arr[0][2] == arr[1][2] && arr[1][2] == arr[2][2]

  elsif arr[0][0] == arr[1][1] && arr[1][1] == arr[2][2]
  
  elsif arr[2][0] == arr[1][1] && arr[1][1] == arr[0][2]
      #Game ends for each of these - pass along mark
  else
    puts "This didn't work... :("
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

end

# Check format (ABC/123)
  
# Place player mark
  board[1][1] = "X"
