module Zussar
  module API
    module Search
      def search_events(query = {})
        path = '/api/event/'
        send(:get, path, query).body
      end

      def search_users(query = {})
        path = '/api/event/user/'
        send(:get, path, query).body
      end
    end
  end
end