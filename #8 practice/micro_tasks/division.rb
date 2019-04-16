def main
    error('Error in numbers of arguments') if ARGV.size != 2
    min = Integer(ARGV[0])
    max = Integer(ARGV[1])
    error('Error in range') if min > max
    range = Range.new(min, max)
    range.each { |value| puts value if expression(value) }
end

def expression(number)
    return true if (number % 5).zero? && (number % 6).zero? && (number % 13).zero? 
    false
end

def error(message)
    puts message
    exit
end

main
