# frozen_string_literal: true

class Game
  def initialize
    @players = [Players.new(0), Players.new(1)]
    @board = Board.new(@players)
    add_board_players
  end
  attr_accessor :board, :players

  def add_board_players
    @players[0].board=(@board)
    @players[1].board=(@board)
  end

  def play
    id = 0
    @board.print_board
    loop do
      col = @players[id].player_play
      @board.place_at(col, player_symbol(id))
      @board.print_board

      id = player_switch(id)
    end
  end

  def player_switch(id)
    return 1 if id.zero?

    0
  end

  def player_symbol(id)
    return '☀' if id.zero?

    '☢'
  end

  def matrix
    steps_row = [0, 1, 0, -1]
    steps_col = [1, 0, -1, 0]
  end
  
  def check_win
    board = @board.board
    board.each do |row|
      
    end
  end
end