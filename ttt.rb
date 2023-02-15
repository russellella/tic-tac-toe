# Test Board with arrays

#Creates a blank board
board = [["_","_","_"],["_","_","_"],["_","_","_"]]

def display(arr)
  puts "  A   B   C"
  arr.each do |one, two, three|
    x = 1
    puts "#{x} #{one} | #{two} | #{three}"
    x += 1 #Not working - figure out how to increment for each row
  end
end

p display(board)