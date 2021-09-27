i = 1
i += 1 until (1..6).collect{|j|i.digits.sort==(i*j).digits.sort}.count{|j|j==false} == 0
puts i