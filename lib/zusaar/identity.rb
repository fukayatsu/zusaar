require 'zusaar/base'

module Zusaar
  class Identity < Zusaar::Base
    attr_reader :id

    def ==(other)
      other.is_a?(self.class) && (self.id == other.id)
    end
  end
end