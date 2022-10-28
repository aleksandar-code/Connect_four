# frozen_string_literal: true

class Board
  def initialize(players = nil)
    @board = [
        [1, 2, 3, 4, 5],
        [1, 2, 3, 4, 5],
        [1, 2, 3, 4, 5],
        [1, 2, 3, 4, 5]
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
    @board.each { |n| p n }
    puts "Drop your piece in one column 1 to 5"
  end
end