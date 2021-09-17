require "prime"
a = [7,6,5,4,3,2,1]
puts a.permutation(7).to_a.map(&:join).map(&:to_i).select{|i|i.prime?}.max