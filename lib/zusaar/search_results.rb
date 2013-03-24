require 'zusaar/base'
require 'zusaar/event'

module Zusaar
  class SearchResults < Zusaar::Base
    attr_reader :results_returned, :results_start

    def initialize(attrs = {})
      @events = attrs['event'].map { |event|
        Zusaar::Event.new(event)
      }

      super(attrs)
    end

    def events
      @events
    end

  end
end