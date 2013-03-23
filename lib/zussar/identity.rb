module Zussar
  class Identity
    attr_reader :id

    def initialize(attrs = {})
      @attrs = attrs
    end

    def ==(other)
      other.is_a?(self.class) && (self.id == other.id)
    end

    class << self
      def attr_reader(*attrs)
        attrs.each do |attribute|
          define_method attribute do
            @attrs[attribute.to_sym]
          end
        end
      end
    end
  end
end