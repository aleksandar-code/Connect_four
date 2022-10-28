# frozen_string_literal: true

class Game
  def initialize
    @players = [Player.new(0), Player.new(1)]
    @board = Board.new(@players)
  end

  def play
    id = 0
    @board.print_board
    loop do
      
    end
  end

  def wins
    [
      [1, 2, 3, 4], [2, 3, 4, 5], [1, 1, 1, 1], [2, 2, 2, 2], [3, 3, 3, 3], [4, 4, 4, 4], [5, 5, 5, 5]
    ]
  end
end