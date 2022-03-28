size = 20
# +1 because one row and column needs to be 1 to show only 1 path in each cell
a = Array.new(size+1){Array.new(size+1)}.map{|x|x.map{|y|y=1}}
x = 1
y = 1
# dynamic programming, use previous computed cells to accumulate
1.upto(size).each{|i|
    1.upto(size).each{|j|   
        a[y][j] = a[y-1][j]+a[y][j-1]
    }
    y += 1
}
p a[-1][-1]