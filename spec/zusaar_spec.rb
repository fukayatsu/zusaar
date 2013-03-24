require 'spec_helper'

describe Zusaar do
  describe "#method_missing" do
    it "respond to search_events" do
      Zusaar.respond_to?(:search_events).should == true
    end

    it "respond to search_users" do
      Zusaar.respond_to?(:search_users).should == true
    end
  end
end