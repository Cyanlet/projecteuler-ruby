(1..400).each{|a|
    (1..400).each{|b|
        c = (a**2+b**2)**0.5
        puts a*b*c if a+b+c == 1000
    }
}