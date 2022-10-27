# frozen_string_literal: true

class Game
  def initialize
    @players = [Player.new(0), Player.new(1)]
    @board = Board.new(@players)
  end
end