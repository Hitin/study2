class Fixnum
	def factorial_opt (n = self, mult = 1)
		return mult if n == 0
		return "Факториал считается только для натуральных чисел" if n < 0
		factorial_opt(n - 1 , mult * n)
	end
end

puts 25.factorial_opt