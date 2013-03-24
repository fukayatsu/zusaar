require 'spec_helper'

describe Zusaar::Identity do
  describe "#==" do
    it "return true when their ids are same" do
      me    = Zusaar::Identity.new(id: 1, nickname: 'foo')
      other = Zusaar::Identity.new(id: 1, nickname: 'bar')
      expect(me == other).to be_true
    end
  end
end