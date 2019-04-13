sum = 0
string = 'over'

loop do
  print '> '
  line = gets

  break if line.nil?
  break if line.strip == string

  if line.to_f.zero?
    print 'Input error! Try again!'
    next
  end

  puts "\nInput number: #{line.to_f}"
  puts "Current sum: #{sum += line.to_f}"
end

puts "\nAll sum: #{sum}"
