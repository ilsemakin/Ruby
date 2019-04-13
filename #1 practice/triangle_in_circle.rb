# frozen_string_literal: true

def input_number(message)
  loop do
    print message
    print ' > '

    line = gets
    return nil if line.nil?

    number = Float(line.strip)
    puts "Result : #{number}"
    return number

  rescue ArgumentError => _exception
    puts 'Input error! Try again!'
  end
end

def main
  side_a = side_b = side_c = 0
  loop do
    side_a = input_number('Input side a')
    side_b = input_number('Input side b')
    side_c = input_number('Input side c')
    break if check_triangle(side_a, side_b, side_c)

    puts 'Triangle no exist!'
  end
  radius = input_number('Input radius')
  if triangle_in_circle_true?(side_a, side_b, side_c, radius)
    puts 'Yes, triangle in a circle'
  else
    puts 'No, triangle is not in the circle'
  end
end

def check_triangle(side_a, side_b, side_c)
  return true if (side_a + side_b) > side_c && (side_a + side_c) > side_b && (side_b + side_c) > side_a

  false
end

def triangle_in_circle_true?(side_a, side_b, side_c, radius)
  r = (side_a * side_b * side_c / (4 * square_triangle(side_a, side_b, side_c))).round(3)
  return true if radius == r

  false
end

def square_triangle(side_a, side_b, side_c)
  t = (side_a + side_b + side_c) / 2

  Math.sqrt(t * (t - side_a) * (t - side_b) * (t - side_c)).round(3)
end

main
