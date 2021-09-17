max = 0
(900..999).each{|x|
    (900..999).each{|y|
        multi = x*y
        max = multi if multi.to_s == multi.to_s.reverse and multi > max
    }
}
puts max