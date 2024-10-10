def bubble_sort(list)
    
    len = list.length()
    
    loop do
        s = false

        (len - 1).times do |i|
            if (list[i] > list[i + 1])
                list[i], list[i + 1] = list[i + 1], list[i]
                s = true
            end
        end
            
        if not s
            break
        end
    end
    
    return list
end

print bubble_sort([4,3,78,2,0,2])