module RSpec
  module Core
    # @private
    class LookupSet
      include Enumerable

      def initialize(array=[])
        @values = {}
        merge(array)
      end

      def <<(key)
        @values[key] = true
        self
      end

      def each(&block)
        @values.keys.each(&block)
        self
      end

      def include?(key)
        @values.key?(key)
      end

      def merge(values)
        values.each do |key|
          @values[key] = true
        end
        self
      end
    end
  end
end
