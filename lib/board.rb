# frozen_string_literal: true

class Board
  def initialize(players = nil)
    @board = [
        [1, 2, 3, 4],
        [1, 2, 3, 4],
        [1, 2, 3, 4],
        [1, 2, 3, 4]
    ]
    @players = players
  end
  attr_accessor :board, :players

  def place_at(col, sym)
    board = @board if board.nil?
    id = 3
    round = 0
    placed = false
    until placed || round == 4
      if board[id][col-1] == col
        board[id][col-1] = sym
        placed = true
      end
      id = id - 1
      round = round + 1
    end
  end

  def print_board
    to_print = ' '
    @board.each do |n|
      n.each_with_index do |x, idx|
        to_print = x unless (1..4).include?(x)
        print "┃   #{to_print}   "
        to_print = ' '
      end
      puts "\n"
    end
    puts "Drop your piece in one column 1 to 4"
  end
end
