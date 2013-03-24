require 'zussar/search_results'

module Zussar
  module API
    module Search
      def search_events(query = {})
        path = '/api/event/'
        body = send(:get, path, query).body
        SearchResults.new(body)
      end

      def search_users(query = {})
        path = '/api/event/user/'
        body = send(:get, path, query).body
        SearchResults.new(body)
      end
    end
  end
end