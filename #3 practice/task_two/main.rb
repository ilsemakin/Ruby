require_relative 'auto'
require_relative 'fleet'

car_1 = Auto.new("Honda", "Civic", 1998, 12.5)
car_2 = Auto.new("Nissan", "Navara", 2005, 10.3)
car_3 = Auto.new("Nissan", "Navara", 2008, 9.7)
car_4 = Auto.new("Tayota", "Tundra", 2008, 11.8)
car_5 = Auto.new("Tayota", "Raf4", 2010, 14.8)

print "\n\n"

park = Fleet.new
park.add(car_1)
park.add(car_2)
park.add(car_3)
park.add(car_4)
park.add(car_5)

pp park
print "\n\n"

puts "Средний расход всех авто в парке ~ #{park.average_consumption.round(2)}"
puts "Совпадений по бренду : #{park.number_by_brand("Honda")}"
puts "Совпадений по модели : #{park.number_by_model("Navara")}"
