string = "stop, please"
while true
    print ">"
    line = gets
    break if line.nil?
    break if string == line.strip
    puts line
end