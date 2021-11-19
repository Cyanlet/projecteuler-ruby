require 'csv'
nums = 4
count = 20
rows = CSV.read('problem11grid.csv')
matrix = rows.map{|x|x[0].split.map(&:to_i)}
products = []
# horizontal
(0..count-1).each{|y|
    (0..count-nums).each{|x|
        products << matrix[y][x..x+nums-1].reduce(:*)
    }
}
# vertical
(0..count-nums).each{|y|
    (0..count-1).each{|x|
        products << (0..nums-1).inject(1){|n,i|n*matrix[y+i][x]}
    }
}
# diagonal to right
(0..count-nums).each{|y|
    (0..count-nums).each{|x|
        products << (0..nums-1).inject(1){|n,i|n*matrix[y+i][x+i]}
    }
}
# diagonal to left
(0..count-nums).each{|y|
    (nums-1..count-1).each{|x|
        products << (0..nums-1).inject(1){|n,i|n*matrix[y+i][x-i]}
    }
}
puts products.max