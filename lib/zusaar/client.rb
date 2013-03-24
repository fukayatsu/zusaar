require 'faraday'
require 'faraday_middleware'
require 'zusaar/api/search'
require 'zusaar/version'

module Zusaar
  class Client
    include Zusaar::API::Search

    def get(path, params = {})
      request(:get, path, params)
    end

  private

    def request(method, path, params = {})
      connection.send(method.to_sym, path, params)
    end

    def connection
      @connection ||= begin
        endpoint = 'http://www.zusaar.com'
        connection_options = {
          :headers => {
            :accept => 'application/json',
            :user_agent => "Zusaar Ruby Gem #{Zusaar::VERSION}",
          },
          :request => {
            :open_timeout => 5,
            :timeout => 10,
          }
        }
        Faraday.new(endpoint, connection_options) { |conn|
          conn.adapter  Faraday.default_adapter
          conn.request  :url_encoded
          conn.use      FaradayMiddleware::ParseJson
        }
      end
    end
  end
end