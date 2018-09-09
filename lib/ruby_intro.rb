# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    return arr.inject(0, :+)
end

def max_2_sum arr
    if arr.length == 0 or arr.length == 1
        if arr.length == 0
            return 0
        else
            return arr.max
        end
    else
        m1, s = arr.max, arr.length
        r = (0...s).select{|x| arr[x] == m1}
        if r.length >= 2
            return m1 * 2
        else
            arr.keep_if { |a| a < m1}
            m2 = arr.max
            return m1 + m2
        end
    end
end

def sum_to_n? arr, n
    if arr.length == 0 or arr.length == 1
        return false
    else
        t = false
        for x in (0...arr.length-1)
            if arr[x] + arr[x+1] == n
                t = true
            end
        end
        if t == true
            return true
        else 
            return false
        end
    end
end

# Part 2

def hello(name)
    return "Hello, " + name 
end

def starts_with_consonant? s
    if s.empty? == true
        return false
    elsif s.match(/^\W[^A-Za-z]*/) or s.match(/^\d[^A-Za-z]*/)
        return false
    elsif s.match(/^[aeiou][a-z]*/i)
        return false
    else
        return true
    end
end

def binary_multiple_of_4? s
    if s.empty? == true
        return false
    elsif s.to_i(2) == 0 and s.match(/[^0]/)
        return false
    elsif s.to_i(2) % 4 == 0
        return true
    else
        return false
    end
end


# Part 3

class BookInStock
    attr_accessor :isbn
    attr_accessor :price 

    def initialize(isbn, price)
        raise ArgumentError.new("ISBN number cannot be empty") unless isbn.empty? == false
        raise ArgumentError.new("Price cannot be a negative number") unless price > 0.00
        
        @isbn = isbn
        @price = price  
    end
    
    
    def price_as_string()
        return "$#{'%.2f' % @price}" 
    end
end
