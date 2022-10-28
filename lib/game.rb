# frozen_string_literal: true

class Game
  def initialize
    @players = [Players.new(0), Players.new(1)]
    @board = Board.new(@players)
    add_board_players
  end
  attr_accessor :board, :players

  def add_board_players
    @players[0].board=(@board.board)
    @players[1].board=(@board.board)
  end

  def play
    id = 0
    @board.print_board
    puts "Drop your piece in one column 1 to 5"
    loop do
      col = @players[id].player_play
    end
  end

  def wins
    [
      [1, 2, 3, 4], [2, 3, 4, 5], [1, 1, 1, 1], [2, 2, 2, 2], [3, 3, 3, 3], [4, 4, 4, 4], [5, 5, 5, 5]
    ]
  end
end