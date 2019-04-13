# frozen_string_literal: true

require_relative '../input'

def main
  print "Compact array\n\n"
  array = []

  loop do
    temp = input_number('> ')
    break if temp.nil?

    array.push(temp)
  end
  p array

  array.delete_if(&:zero?)
  p array
end

main
