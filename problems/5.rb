# ugly brute force :(
n = 1
a = (1..20).to_a
while true
	b = false
	a.each{|i|
		break if n % i != 0
		b = true if i == a.length
	}
	break if b
	n += 1
end
puts n