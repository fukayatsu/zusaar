require 'spec_helper'

describe Zussar::User do
  describe "#==" do
    it "return true when their ids are same" do
      user  = Zussar::User.new(id: 1, nickname: 'foo')
      other = Zussar::User.new(id: 1, nickname: 'bar')
      expect(user == other).to be_true
    end
  end
end