require 'zusaar/identity'

module Zusaar
  class Event < Zusaar::Identity
    attr_reader :event_id, :title, :catch, :description, :event_url,
                :started_at, :ended_at, :pay_type, :url, :limit,
                :address, :place, :lat, :lon, :owner_id, :owner_profile_url,
                :owner_nickname, :accepted, :waiting, :updated_at

    alias_method :id, :event_id

    def initialize(attrs = {})

      if attrs['users']
        @users = attrs['users'].map { |user|
          Zusaar::User.new(user)
        }
      end

      super(attrs)
    end

    def users
      @users
    end
  end
end