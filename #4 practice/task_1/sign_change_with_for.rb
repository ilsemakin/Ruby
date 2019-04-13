# frozen_string_literal: true

require_relative '../input'

print "Counts amount of sign changes in a array\n\n"
array = []
index_a = []

loop do
  temp = input_number('> ')
  break if temp.nil?

  array.push(Integer(temp))
end
p array

prev_value = array[0]
index = 0
array.each do |value|
  if prev_value.positive? && value.negative?
    index_a.push(index)
    prev_value = value
  elsif prev_value.negative? && value.positive?
    index_a.push(index)
    prev_value = value
  end

  index += 1
end

p index_a
p index_a.size
