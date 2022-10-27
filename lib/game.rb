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
end