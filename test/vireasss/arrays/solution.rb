module Vireasss
  module Arrays
    class << self
      def replace(array)
        min = array.min
        array.map { |val| val < 0 ? min : val }
      end
    end
  end
end
