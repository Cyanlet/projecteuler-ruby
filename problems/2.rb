a = []
l = 1
i = 1
f = ->(x){x < 2 ? x : f[x-1] + f[x-2]}
while l < 4e6
	l = f[i]
	a << l if l % 2 == 0
	i += 1
end
puts a.sum