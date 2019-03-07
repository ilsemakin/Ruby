require_relative 'my_complex'

object_1 = MyComplex.new(4,5)
object_2 = MyComplex.new(2,-3)

p object_1
p object_2
print "\n"

puts object_1
puts object_2
print "\n"

puts "Sum = #{object_1.add(object_2)}"
puts "Sub = #{object_1.sub(object_2)}"
puts "Multiply = #{object_1.multiply(object_2)}"
puts "Devide = #{object_1.devide(object_2)}"
