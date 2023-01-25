#recursion W3D3

def range(start, endint)
    return [start] if start == endint
    return [] if endint < start
    range(start, endint-1) << endint
end

def it_sum(arr)
    sum = 0
    arr.each {|ele| sum += ele}
    return sum

end

def rec_sum(arr)
    return 0 if arr.length == 0

    rec_sum(arr[1..-1]) + arr[0]
end
