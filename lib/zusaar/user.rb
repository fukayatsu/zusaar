module Zusaar
  class User < Zusaar::Identity
    attr_reader :user_id, :profile_url, :nickname, :status

    alias_method :id, :user_id
  end
end