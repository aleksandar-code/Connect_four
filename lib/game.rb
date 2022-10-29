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
      return puts "win" if game_over()


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

  def game_overs
    board = @board.board
    i = 0
    y = 0
    4.times do
      if board[0][y] == '☀'
        4.times do
          i += 1 if board[i][y] == '☀'
        end

        return true if i == 4 
      end
      i = 0
      y = y + 1
    end
    y = 0

    4.times do
      if board[y][0] == '☀'
        4.times do
          i += 1 if board[y][i] == '☀'
        end

        return true if i == 4
      end
      i = 0
      y = y + 1
    end
    false
  end
end