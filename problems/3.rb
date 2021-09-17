require 'prime'
puts Prime.prime_division(600851475143).last[0]
# f = []
# n = 600851475143
# until n == 1
# 	Prime.each(n) do |p|
# 		if n % p == 0
# 			f << p
# 			n /= p
# 			break
# 		end
# 	end
# end
# puts f.max