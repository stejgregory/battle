require 'spec_helper'
require 'player'
require 'game'

describe Game do
  subject { described_class.new }

  describe 'attack' do
    it "should reduce hit points if you click attack" do
      expect{subject.attack(player_2)}.to change{player_2.hit_points}.by(-10)
    end
  end

end
