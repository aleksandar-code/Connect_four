# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/board'
require_relative '../lib/players'

RSpec.describe Game do
    
  describe '#player_switch' do
    subject(:game) { Game.new }
    context 'when an id is given' do
      
      it 'returns 1' do
        expect(game.player_switch(0)).to eq(1)
      end
    end
  end

  describe '#player_symbol' do
    context 'when an id is given' do
  
      let(:game) { instance_double(Game) }
      
      before do
        allow(game).to receive(:player_symbol).and_return("✦")
      end
  
      it 'returns ✦' do
        expect( game.player_symbol(0)).to eq("✦")
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

  describe '#play' do
    context 'when' do
      it 'returns' do
      end
    end
  end
end
