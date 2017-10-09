module Vireasss
  module Arrays
    class << self
      def replace(array)
        min = array.min
        arr = []
        array.each {|val| val < 0 ? arr << min : arr << val}
        arr
      end

      def search(array, query)
        0
      end
    end
  end
end
