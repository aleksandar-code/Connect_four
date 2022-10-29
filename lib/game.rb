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
      sym = player_symbol(id)
      @board.place_at(col, sym)
      @board.print_board
      return puts "tie" if tie()
      return puts "\nplayer:  #{sym}  wins" if game_over(sym)


      id = player_switch(id)
    end
  end

  def tie
    return false if @board.board[0].any?(1..4)
    true
  end

  def player_switch(id)
    return 1 if id.zero?

    0
  end

  def player_symbol(id)
    return '☀' if id.zero?

    '☢'
  end

  def vertical_win(i, y, sym)
    4.times do
      if @board.board[0][y] == sym
        4.times do
          i += 1 if @board.board[i][y] == sym
        end

        return true if i == 4 
      end
      i = 0
      y = y + 1
    end
    false
  end

  def horizontal_win(i, y, sym)
    4.times do
      if @board.board[y][0] == sym
        4.times do
          i += 1 if @board.board[y][i] == sym
        end

        return true if i == 4
      end
      i = 0
      y = y + 1
    end
    false
  end

  def diagonal_left_win(i, y, sym)
    4.times do
      if @board.board[0][0] == sym
        4.times do
          if @board.board[y][i] == sym
            y += 1
            i += 1
          end
          return true if i == 4
        end
      end
    end
    false
  end

  def diagonal_right_win(i, y, sym)
    4.times do
      if @board.board[0][3] == sym
        4.times do
          if @board.board[y][i] == sym
            y += 1
            i -= 1
          end
          return true if y == 4
        end
      end
    end
    false
  end

  def game_over(sym)
    i = 0
    y = 0
    
    return true if vertical_win(i, y, sym)
    return true if horizontal_win(i, y, sym)
    return true if diagonal_left_win(i, y, sym)
    return true if diagonal_right_win(3, y, sym)

    false
  end

end