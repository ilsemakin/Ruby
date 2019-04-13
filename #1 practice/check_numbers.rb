count_success = 0
count_error = 0
number = 99.999

loop do
  print '> '
  line = gets

  break if line.nil?
  break if line.to_f == number

  if line.strip.to_i <= 0 || line.strip.to_i.to_s != line.strip
    print 'Input error! Try again! '
    count_error += 1
    next
  end

  puts "\nSuccess! Input number: #{line.to_i}"
  count_success += 1
end

puts "\nCount of successful cases: #{count_success}"
puts "Count of error cases: #{count_error}"
