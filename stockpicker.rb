def stock_picker(arr)
    result = 0
    resulting_arr = []
    arr.each_index do |first|
        (first...arr.length).each do |second|
            profit = arr[second] - arr[first]
            if profit > result
                result = profit
                resulting_arr = [first, second]
            end
        end
    end
    return resulting_arr
end

print stock_picker([17,3,6,9,15,8,6,1,10])
