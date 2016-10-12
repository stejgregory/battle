require 'spec_helper'
require 'player'
require 'game'

describe Game do
  let(:player_1) { Player.new("Sally") }
  let(:player_2) { Player.new("Claire") }
  subject { described_class.new(player_1, player_2) }

  describe 'attack' do
    it "should reduce hit points if you click attack" do
      expect{subject.attack(subject.player_2)}.to change{subject.player_2.hit_points}.by(-10)
    end
  end

end
