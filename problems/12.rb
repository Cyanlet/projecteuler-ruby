require "prime"
i = 1
j = 1
until Prime.prime_division(j).inject(1){|s,x|s*(x[1]+1)} > 500
    i += 1
    j += i
end
puts j