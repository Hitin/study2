module Vampir135
  module Arrays
    class << self
      def replace(array)
        max = array.max
        array.map { |val| val.positive? ? max : val }
      end
    end
  end
end
