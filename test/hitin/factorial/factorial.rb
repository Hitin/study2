class Integer
  def factorial_opt(n = self, mult = 1)
    return mult if n.zero?
    return 'Факториал считается только для натуральных чисел' if n.negative?
  end
end

puts 25.factorial_opt
