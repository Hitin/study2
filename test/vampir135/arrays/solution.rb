module Vampir135
  module Arrays
    class << self
      def replace(array)
        max = array.max
        arr = []
        array.each {|val| val > 0 ? arr << max : arr << val}
        arr 
      end

      def search(array, query)
        0
      end
    end
  end
end
