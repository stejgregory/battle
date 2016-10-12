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

end
