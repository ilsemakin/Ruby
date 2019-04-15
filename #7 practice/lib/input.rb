# frozen_string_literal: true

# input data
module Input
  def self.string(message)
    loop do
      print message
      line = gets
      return nil if line.nil?
      return line.strip unless line.empty?

      puts 'Line is empty! Try again!'
    end
  end

  def self.number(message)
    loop do
      print message
      line = gets
      return nil if line.nil?

      number = Integer(line.strip)
      return number if number.pozitive?

      puts 'Number non pozitive! Try again!'
    rescue ArgumentError => _exception
      puts 'Input error! Try again!'
    end
  end
end
