module Zussar
  class Base
    def initialize(attrs = {})
      @attrs = attrs
    end

    class << self
      def attr_reader(*attrs)
        attrs.each do |attribute|
          define_method attribute do
            @attrs[attribute.to_sym] || @attrs[attribute.to_s]
          end
        end
      end
    end
  end
end