

# input data
module Input
    def self.string(message)
        loop do
            print message
            line = gets
            return nil if line.nil?
            return line.strip
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
            puts 'Input erroe! Try again!'
        end
    end
end