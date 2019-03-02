def input_number(message)
    loop do
        print "\nInput number #{message} > "
        input = gets
        return nil if input.nil?
        return Float(input)
        rescue 
            puts "Error! Please, repeat!"
    end
end

def min(first, second)
    return first unless first > second
    return second
end

def max(first, second)
    return first if first > second
    return second
end 

def main
    a = input_number("a")
    print "Output: #{a}\n"

    b = input_number("b")
    print "Output: #{b}\n"
    
    c = input_number("c")
    print "Output: #{c}\n"
    
    d = input_number("d")
    print "Output: #{d}\n"

    puts "\nmax[min(a,b), min(c,d)] = #{max(min(a,b), min(c,d))}"

end

main
