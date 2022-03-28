def do_steps(n)
    s = 0
    until n == 1
        s += 1
        if n.odd?
            n = n*3+1
        else
            n = n/2
        end
    end
    return s
end

puts (1..1000000).to_a.map{|x|[x, do_steps(x)]}.sort_by{|x|x[1]}[-1]