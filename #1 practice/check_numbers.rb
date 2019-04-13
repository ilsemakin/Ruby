count_success, count_error, number = 0, 0, 99.999

while true

    print "> "
    line = gets.chomp

    break if line.to_f == number

    if(line.to_i <= 0 || line.to_i.to_s != line)
        print "\tInput error, repeat "
        count_error+=1
        next
    end

    puts "\tSuccess! Input number: #{line.to_i}"
    count_success+=1

end

puts "\nCount of successful cases: #{count_success}"
puts "Count of error cases: #{count_error}"