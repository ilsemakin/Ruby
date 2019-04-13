# frozen_string_literal: true

def input_number(message)
  loop do
    print message
    line = gets
    return nil if line.nil?
    return if line.strip == 'end'

    return Float(line.strip)

  rescue ArgumentError => _exception
    puts 'Error input! Try again!'
  end
end
