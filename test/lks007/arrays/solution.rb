module Lks007
  module Arrays
    class << self
      def max_repeat(array)
        #[1, 1, 2, 2, 2, 4, 5, 6, 6, 6, 6, 1, 3, 4, 5, 5]
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
        arr_res.empty? ? 0 : arr_res.values.max
      end

      def search(array, query)
        0
      end
    end
  end
end
