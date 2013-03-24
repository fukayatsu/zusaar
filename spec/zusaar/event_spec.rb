require 'spec_helper'

describe Zusaar::Event do
  describe "#id" do
    it 'is alias of event_id' do
      event = Zusaar::Event.new(event_id: 123)
      event.id.should == 123
    end
  end
end