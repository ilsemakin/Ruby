# frozen_string_literal: true

require_relative 'my_complex'

one = MyComplex.new(4, 5)
two = MyComplex.new(2, -3)

p one
p two
print "\n"

puts one
puts two
print "\n"

puts "Sum = #{one.add(two)}"
puts "Sub = #{one.sub(two)}"
puts "Multiply = #{one.multiply(two)}"
puts "Devide = #{one.devide(two)}"
