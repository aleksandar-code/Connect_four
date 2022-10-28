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

  def print_board
    @board.each { |n| p n }
    puts "Drop your piece in one column 1 to 5"
  end
end