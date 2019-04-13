# frozen_string_literal: true

def input_number(message)
  loop do
    print "\nInput number #{message} > "
    input = gets

    return nil if input.nil?

    number = Float(input)
    puts "Result : #{number}"
    return number

  rescue ArgumentError => _exception
    puts 'Error! Try again!'
  end
end

def min(first, second)
  return first unless first > second

  second
end

def max(first, second)
  return first if first > second

  second
end

def main
  number_a = input_number('a')
  number_b = input_number('b')
  number_c = input_number('c')
  number_d = input_number('d')

  output = "\nmax[min(#{number_a}, #{number_b}), min(#{number_c}, #{number_d})] = "
  puts output + max(min(number_a, number_b), min(number_c, number_d)).to_s
end

main
