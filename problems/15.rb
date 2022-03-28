size = 20
# +1 on size because one row and column needs to be 1 to show only 1 path in each cell at the edges of matrix, each cell initialized at 1
a = Array.new(size+1){Array.new(size+1)}.map{|x|x.map{|y|y=1}}
y = 1
# use dynamic programming; previous computed cells -1 x and -1 y to accumulate and build up matrix
1.upto(size).each{|i|
    1.upto(size).each{|j|   
        a[y][j] = a[y-1][j]+a[y][j-1]
    }
    y += 1
}
p a[-1][-1]