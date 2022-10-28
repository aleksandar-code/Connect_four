# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/players'
require_relative '../lib/board'

RSpec.describe Players do

  describe '#player_play' do
  subject(:player_loop) { described_class.new(0) }
  let(:board_players) { Board.new }

    context 'when input is valid' do

      before do
        player_loop.board=board_players
      end
      
      it 'stops the loop and does not display error message' do
        input = 3
        allow(player_loop).to receive(:player_input).and_return(input)
        expect(player_loop).not_to receive(:puts).with('Drop your piece in one column 1 to 5')
        player_loop.player_play
      end

    end

    context 'when user inputs an incorrect value once, then a valid input' do

      before do
        letter = 'd'
        valid = 5
        player_loop.board=board_players
        allow(player_loop).to receive(:player_input).and_return(letter, valid)
      end

      it 'completes loop and displays error message once' do
        expect(player_loop).to receive(:puts).with('Drop your piece in one column 1 to 5').once
        player_loop.player_play
      end

    end

    context 'when user inputs two incorrect values, then a valid input' do
      before do
        letter = 'd'
        symbol = '%'
        valid = 1
        player_loop.board=board_players
        allow(player_loop).to receive(:player_input).and_return(letter, symbol, valid)
      end

      it 'completes loop and displays error message twice' do
        expect(player_loop).to receive(:puts).with('Drop your piece in one column 1 to 5').twice
        player_loop.player_play
      end
    end

  end

  
  describe '#check_range' do
    context 'when an input is given' do
      it 'returns' do
      end
    end
  end

  describe '#check_board' do
  subject(:player) { described_class.new(0) }
  let(:board) { Board.new }
    context 'when an input is given' do
      it 'returns nil' do
        user_input = 0
        result = player.check_board(board, user_input)
        expect(result).to be_falsy
      end

      it 'it returns the location' do
        user_input = 1
        result = player.check_board(board, user_input)
        expect(result).to eq(result)
      end
    end
  end

  describe '#play' do
    context 'when' do
      it 'returns' do
      end
    end
  end

  describe '#play' do
    context 'when' do
      it 'returns' do
      end
    end
  end

end
