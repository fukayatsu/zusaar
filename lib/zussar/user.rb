module Zussar
  class User
    def initialize(attrs = {})
      @id         = attrs['id'] || attrs['user_id']
      @profile_id = attrs['profile_id']
      @nickname   = attrs['nickname']
      @status     = attrs['status']
    end

    attr_reader :id, :profile_id, :nickname, :status

    def ==(other)
      other.is_a?(self.class) && (self.id == other.id)
    end
  end
end