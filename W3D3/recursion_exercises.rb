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

require "byebug"
def exp_1(base, num)
    return 1 if num == 0
    base * exp_1(base, num - 1)
end

# def exp_2(base, num)
#     return 1 if num == 0
#     return base if num == 1

#     if num.even? 
#         last = exp_2(base, (num - 1 - 1) / 2)
#         base ** 2 * last
#     else
#         last = exp_2(base, ((num - 1) / 2))
#         base ** 2 * last
#     end
# end

# debugger
# p exp_2(3, 4)


def exp_2(base, num)
    return 1 if num == 0
    return base if num == 1

    if num.even?
        half_num_prior = exp_2(base, num / 2)
        half_num_prior * half_num_prior
    else
        halfish_prior = exp_2(base, (num - 1) /2)
        base * halfish_prior * halfish_prior
    end
end

class Array

    def deep_dup
        self.map do |ele|
            if ele.is_a?(Array)
                ele.deep_dup
            else
                ele.dup
            end
        end
  
    end   

end

def iter_fib(n)

    result = [0, 1]
    
    return result.take(n) if n < 2

    i = 2
    while i < n 
        result << result[-1] + result[-2]

        i+=1
    end
    result
end

def rec_fib(n)
    result = [0, 1]
    
    return result.take(n) if n <= 2
    prior = rec_fib(n - 1)
    prior << (prior[-1] + prior[-2])
end
require "byebug"
def bsearch(arr, target)
    # if arr.length == 1 && arr[0] == target
    #     return 
    return nil if arr.length == 1 && arr[0] != target
    
    left = arr[0...arr.length/2]
    right = arr[arr.length/2 + 1..-1]
    return left.length if arr[arr.length/2] == target

    if target > arr[arr.length/2]
       bsearch(right, target) + left.length
    # elsif target < arr[arr.length/2]
        # resultidx += bsearch(left, target)
    else
        bsearch(left, target)
    end

end
# debugger

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

