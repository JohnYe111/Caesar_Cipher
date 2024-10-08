def substrings(str, dictionary)
    res = {}
    str = (str.gsub(/[^A-Za-z\s]/, '')).split
    
    dictionary.each do |s|
        str.each do |word|
            if (word.downcase).include?((s.downcase))
                if res.key?(s)
                    res[s] += 1
                else
                    res[s] = 1
                end
            end
        end
    end

    return res
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
