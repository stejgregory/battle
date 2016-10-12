require 'spec_helper'
require 'player'

describe Player do
  subject { described_class.new("Sally") }
  let(:player_2) { described_class.new("Claire") }
  describe 'name' do
    it "should have a name" do
      expect(subject.name).to eq "Sally"
    end
  end

  describe 'attack'
    it "should reduce hit points if you click attack" do
      expect{subject.attack(player_2)}.to change{player_2.hit_points}.by(-10)
    end

end
