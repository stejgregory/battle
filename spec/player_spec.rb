require 'spec_helper'

describe Player do
  subject { described_class.new("Sally") }

  describe 'name' do
    it "should have a name" do
      expect(subject.name).to eq "Sally"
    end
  end
end
