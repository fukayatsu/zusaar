require "zussar/version"
require 'zussar/client'
require 'zussar/identity'
require 'zussar/user'

module Zussar
  class << self
    def client
      return @client if defined?(@client)
      @client = Zussar::Client.new
    end

    def respond_to_missing?(method_name, include_private = false)
      client.respond_to?(method_name, include_private);
    end

  private

    def method_missing(method_name, *args, &block)
      return client.send(method_name, *args, &block) if client.respond_to?(method_name)
      super
    end

  end
end
