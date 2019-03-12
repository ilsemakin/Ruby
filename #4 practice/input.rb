def input_number(message)
    loop do
        print message
        line = gets
        break if line.nil?
        break if line.strip == "end"

        return Float(line.strip)
    rescue ArgumentError => _exception
        print "Error input! Repeat!\n\n"
    end
end
