# frozen_string_literal: true

# input data
class Input
  def self.number(message)
    loop do
      print message
      line = gets
      return nil if line.nil?

      return Float(line.strip)

    rescue ArgumentError => _exception
      puts 'Input error! Try again!'
    end
  end

  def self.choose(commands)
    loop do
      index = number("\nInput number of command > ")
      commands.each_key { |key| return index if index == key }
      puts 'Invalid command! Try again!'
    end
  end
end
