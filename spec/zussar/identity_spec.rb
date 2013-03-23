require 'spec_helper'

describe Zussar::Identity do
  describe "#==" do
    it "return true when their ids are same" do
      me    = Zussar::Identity.new(id: 1, nickname: 'foo')
      other = Zussar::Identity.new(id: 1, nickname: 'bar')
      expect(me == other).to be_true
    end
  end
end