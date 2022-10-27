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

  def print_board
    @board.each { |n| p n }
  end
end