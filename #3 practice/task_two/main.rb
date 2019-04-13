# frozen_string_literal: true

require_relative 'auto'
require_relative 'fleet'

car1 = Auto.new('Honda', 'Civic', 1998, 12.5)
car2 = Auto.new('Nissan', 'Navara', 2005, 10.3)
car3 = Auto.new('Nissan', 'Navara', 2008, 9.7)
car4 = Auto.new('Tayota', 'Tundra', 2008, 11.8)
car5 = Auto.new('Tayota', 'Raf4', 2010, 14.8)

print "\n\n"

park = Fleet.new
park.add(car1)
park.add(car2)
park.add(car3)
park.add(car4)
park.add(car5)

pp park
print "\n\n"

puts "Средний расход всех авто в парке ~ #{park.average_consumption.round(2)}"
puts "Совпадений по бренду : #{park.number_by_brand('Honda')}"
puts "Совпадений по модели : #{park.number_by_model('Navara')}"
