i = 1
until (i.digits.sort == (i*2).digits.sort and i.digits.sort == (i*3).digits.sort and i.digits.sort == (i*4).digits.sort and i.digits.sort == (i*5).digits.sort and i.digits.sort == (i*6).digits.sort)
    i += 1
end

puts i