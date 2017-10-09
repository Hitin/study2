module Makapoxa
  module Arrays
    class << self
      def min_repeat(array)
        arr_res = {}
        interval_val = ''
        i = 0
        array.each_with_index do |el|
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
        0
      end
    end
  end
end
