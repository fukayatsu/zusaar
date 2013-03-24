require 'zussar/base'
require 'zussar/event'

module Zussar
  class SearchResults < Zussar::Base
    attr_reader :results_returned, :results_start

    def initialize(attrs = {})
      @events = attrs['event'].map { |event|
        Zussar::Event.new(event)
      }

      super(attrs)
    end

    def events
      @events
    end

  end
end