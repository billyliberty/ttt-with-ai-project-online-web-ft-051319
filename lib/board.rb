class Board
  attr_accessor :cells

  def initialize()
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    reset!
  end

  def reset!
    @board = Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def full?
    @board.all?{|token| token == "X" || token == "O"}
  end

  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end

  def valid_move?(input)
    input.to_i.between?(1,9) && !taken?(input)
  end

  def update(input, player)
    @board[input.to_i-1] = player.token
  end

  def position(input)
    @board[input.to_i-1]
  end

  def taken?(input)
    !(position(input) == " " || position(input) == "")
  end

end
