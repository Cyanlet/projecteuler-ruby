# this
i = 1
i += 1 until (1..6).all?{|j|i.digits.sort==(i*j).digits.sort}
puts i
# or by using enumerator
puts Enumerator.produce(1,&:next).detect{|i|(1..6).all?{|j|i.digits.sort==(i*j).digits.sort}}