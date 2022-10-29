# frozen_string_literal: true

class Players
  def initialize(id)
    @id = id
    @board = nil
  end
  attr_accessor :board, :id

  def player_play
    column = nil
    until column
      column = verify_input(player_input)
      break if column

      puts "Drop your piece in one column 1 to 4"
    end
    column
  end

  def player_input
    gets.chomp.to_i
  end

  def verify_input(input)
    return input if check_range(input) && check_board(@board, input)
  end

  def check_range(input)
    (1..4).include?(input)
  end

  def check_board(board, input)
    board.board[0].include?(input)
  end
end