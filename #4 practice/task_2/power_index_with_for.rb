# frozen_string_literal: true

require_relative '../input'

print "Prints values which indexes are power of two\n\n"
array = []

loop do
  temp = input('')
  break if temp.nil?

  array.push(temp)
end
p array

powered_index = 1
power = 1
index = 0
array.each do |value|
  if index == powered_index
    print(value, ' ')
    powered_index = 2**power
    power += 1
  end
  index += 1
end
