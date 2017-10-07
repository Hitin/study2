module Hitin
  module Arrays
    class << self
      def move(array, n)
        sdvig = array.length > n ? n : n % array.length
        array.unshift(array.pop(sdvig)).flatten!
      end

      def search(array, query)
        0
      end
    end
  end
end
