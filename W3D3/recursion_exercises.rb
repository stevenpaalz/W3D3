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