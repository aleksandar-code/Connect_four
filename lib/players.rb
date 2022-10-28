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
      column = check_input(player_input)
      break if column

      puts "Drop your piece in one column 1 to 5"
    end
    column
  end

  def player_input
    gets.chomp.to_i
  end

  def check_input(input)
    return input if (1..5).include?(input) && @board.include?(input)
  end
end