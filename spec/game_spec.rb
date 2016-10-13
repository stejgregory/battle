require 'spec_helper'
require 'player'
require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject { described_class.new(player_1, player_2) }

  describe '#attack' do
    it "should be able to attack" do
      allow(player_2).to receive(:reduce_health)
      expect(player_2).to receive(:reduce_health)
      subject.attack(player_2)
    end
  end

  describe 'switch turns' do
    it 'should start with player1' do
      expect(subject.current_turn).to eq player_1
    end

    it 'should switch to player2' do
      subject.switch_turns
      expect(subject.current_turn).to eq player_2
    end
  end
end
