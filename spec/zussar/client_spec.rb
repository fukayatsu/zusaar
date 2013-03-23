require 'spec_helper'

describe Zussar::Client do
  describe '#event_search' do
    context "search with no query" do
      it "returns 10 events" do
        client = Zussar::Client.new
        result = client.search_events()
        events = result['event']
        events.size.should == 10
      end
    end
  end

  describe '#user_search' do
    context "search with no query" do
      it "returns 10 events" do
        client = Zussar::Client.new
        result = client.search_users()
        events = result['event']
        events.size.should == 10
      end

      it "has users for each event" do
        client = Zussar::Client.new
        result = client.search_users()
        events = result['event']
        events[0]['users'].class.should == Array
      end
    end
  end
end