module Makapoxa
  module Arrays
    class << self
      def min_repeat(array)
        arr_res = {}
        interval_val = ''
        i = 0
        array.each do |el|
          if el == interval_val
            arr_res[i] += 1
          else
            i += 1
            arr_res[i] = 1
          end
          interval_val = el         
        end
        arr_res.delete_if {|k,v| v < 2} 
        arr_res.empty? ? 0 : arr_res.values.min      
      end

      def search(array, query)
        first_ind = 0
        last_ind = array.size - 1
        diff = last_ind - first_ind
        result = 0
        while diff > 1
          mid = (first_ind + last_ind) / 2
          if query > array[mid]
            first_ind = mid
          elsif query < array[mid]
            last_ind = mid
          elsif query == array[mid]
            return mid
          end
          diff = last_ind - first_ind
        end
        case query
          when array[first_ind] then result = first_ind
          when array[last_ind] then result = last_ind 
          else result = -1
        end 
        result
      end
    end
  end
end
