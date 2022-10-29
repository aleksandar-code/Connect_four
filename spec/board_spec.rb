# frozen_string_literal: true

require_relative '../lib/board'
require_relative '../lib/players'

RSpec.describe Board do
  subject(:board_test) { described_class.new }
  describe '#place_at' do
    context 'when a location and a symbol are given' do
  
      it 'change the board observable state' do
        expect { board_test.place_at(1, "✦") }.to change { board_test.board.last.first }.to("✦")
      end
  
    end
  end

end
