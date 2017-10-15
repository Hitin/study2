module Vireasss
  module Arrays
    class << self
      def replace(array)
        min = array.min
        array.map { |val| val.negative? ? min : val }
      end
    end
  end
end
