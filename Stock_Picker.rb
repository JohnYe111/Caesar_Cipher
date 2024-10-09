def stock_picker(prices)
    l, r, m, res = 0, 1, 0, []
    
    while r < prices.length()
        if prices[l] >= prices[r]
            l = r
        else
            if (m < prices[r] - prices[l])
                m = [m, prices[r] - prices[l]].max
                res[0], res[1] = l, r
            end
        end
        r += 1
    end
    
    return res
end

puts stock_picker([17,3,6,9,15,8,6,1,10])