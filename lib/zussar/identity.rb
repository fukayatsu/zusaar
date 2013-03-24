require 'zussar/base'

module Zussar
  class Identity < Zussar::Base
    attr_reader :id

    def ==(other)
      other.is_a?(self.class) && (self.id == other.id)
    end
  end
end