def caesar_cipher(str, leaps)
    cap_min_bound = 65  # A
    cap_max_bound = 90  # Z
    low_min_bound = 97  # a
    low_max_bound = 122 # z

    # map ascii number => letter
    cap_table = {}
    low_table = {}
    res = ""

    cap_min_bound.upto(cap_max_bound). each do |i|
        cap_table[i] = i.chr
    end

    low_min_bound.upto(low_max_bound). each do |i|
        low_table[i] = i.chr
    end
    
    str.split("").each do |i|
        key = i.ord
        # capital letter
        if (key >= cap_min_bound && key <= cap_max_bound)
            if key + leaps > cap_max_bound
                res += cap_table[(key + leaps) - (leaps / 26) - 26]
            else
                res += cap_table[key + leaps]
            end
        # lower case letter
        elsif (key >= low_min_bound && key <= low_max_bound)
            if key + leaps > low_max_bound
                res += low_table[(key + leaps) - (leaps / 26) - 26]
            else
                res += low_table[key + leaps]
            end
        else
            res += i
        end
    end

    puts res

end


puts (87 + 5) % 26