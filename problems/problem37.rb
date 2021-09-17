require 'prime'
a = []
Prime.each(1000000) do |p|
	for i in 1..p.digits.count
		break unless p.to_s.chars.shift(i).join.to_i.prime? and p.to_s.chars.pop(i).join.to_i.prime?
		a << p if i == p.to_s.chars.count
	end
end
puts a.select{|n|n>9}.sum