# frozen_string_literal: true

class Board
  def initialize(players)
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
  end
end