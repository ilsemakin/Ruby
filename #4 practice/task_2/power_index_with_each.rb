# frozen_string_literal: true

require_relative '../input'

print "Prints values which indexes are power of two\n\n"
array = []

loop do
  temp = input_number('')
  break if temp.nil?

  array.push(temp)
end
p array

powered_index = 1
power = 1
array.each_with_index do |value, index|
  next unless index == powered_index

  print(value, '  ')
  powered_index = 2**power
  power += 1
end
