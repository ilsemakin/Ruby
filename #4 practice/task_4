require_relative '../input'

def calculate_value(polynomial, point)
    result = 0
    power = polynomial.size - 1

    polynomial.each_with_index{ |value, index| result += value * (point ** (power - index))}
    return result
end

def derivative(polynomial)
    der_polynomial = []
    power = polynomial.size - 1

    polynomial.pop
    polynomial.each_with_index{ |value, index| der_polynomial.push(value * (power - index))}
    return der_polynomial
end

def main
    polynomial = []
    count = 0

    #puts "Input coeff:"
    loop do
        temp = input_number("")
        break if temp.nil?
        polynomial.push(temp)    
    end

    power = polynomial.size - 1
    #point = input_number("Input point> ")
    point = input_number("")

    puts "power > #{power}"
    puts "polynomial : #{polynomial}"
    puts "point > #{point}"

    val_polynomial = calculate_value(polynomial, point)
    val_der_polynomial = calculate_value(derivative(polynomial), point)
    
    print "\n\n"
    
    puts "Value of the polynomial at a point #{point} = #{val_polynomial}"
    puts "Value of the derivative of a polynomial at a point #{point} = #{val_der_polynomial}"
end

main
