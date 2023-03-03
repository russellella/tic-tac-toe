class Board
  attr_accessor :gameboard
  def initialize
    @gameboard = Array.new(9) { "_" }
  end
end