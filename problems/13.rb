require 'csv'
rows = CSV.read('problem13numbers.csv')
puts rows.map{|row|row[0].to_i}.sum.to_s[0..9]