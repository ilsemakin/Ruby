sum, string = 0, "over"

while true

    print "> "
    line = gets.chomp

    break if line.strip == string

    if(line.to_f == 0)
        print "\tInput error, repeat "
        next
    end

    puts "\tInput number: #{line.to_f}"
    puts "\tCurrent sum: #{sum += line.to_f}"

end

puts "\n #{sum}"