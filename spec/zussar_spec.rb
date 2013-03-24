require 'spec_helper'

describe Zussar do
  describe "#method_missing" do
    it "respond to search_events" do
      Zussar.respond_to?(:search_events).should == true
    end

    it "respond to search_users" do
      Zussar.respond_to?(:search_users).should == true
    end
  end
end