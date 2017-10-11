module Hitin
  module Arrays
    class << self
      def move(array, n)
        sdvig = array.length > n ? n : n % array.length
        array.unshift(array.pop(sdvig)).flatten!
      end

      def search(array, query)
        first_index = 0
        last_index = array.size - 1
        diff = last_index - first_index
        while diff > 1
          midle = (last_index + first_index) / 2
          if query > array[midle]
            first_index = midle
          elsif query < array[midle]
            last_index = midle
          elsif query == array[midle]
            return midle
          end
          diff = last_index - first_index
        end
        case query
        when array[first_index]
          return first_index
        when array[last_index]
          return last_index
        else return -1
        end
      end
    end
  end
end
