module Zusaar
  class User < Zusaar::Identity
    attr_reader :user_id, :profile_url, :nickname, :status

    alias_method :id, :user_id

    def initialize(attrs = {})
      if attrs['profile_url']
        # zusaar apiのバグ対応
        attrs['profile_url'] = fix_url(attrs['profile_url'])
      end

      super(attrs)
    end

  private

    def fix_url(url)
      return nil if url.nil?
      url.gsub("http//", "http://").gsub("https//", "https://")
    end
  end
end