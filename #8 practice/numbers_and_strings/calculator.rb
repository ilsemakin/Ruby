# frozen_string_literal: true

# calculator
class Calculator
  def calc
    error('Error in numbers of arguments') if ARGV.size != 1

    arg = ARGV[0].squeeze.split(' ')

    denominator1 = arg[0].split('/')
    denominator2 = arg[2].split('/')
    check(denominator1, denominator2)

    number1 = Rational(arg[0])
    number2 = Rational(arg[2])
    result = operations(number1, arg[1], number2)

    puts result
    puts Float(result)
  rescue ArgumentError => _exception
    puts 'Error in arguments'
  end

  def error(message)
    puts message
    exit
  end

  def check(denominator1, denominator2)
    error('Error! Divided by zero!') if denominator1[1] == '0' || denominator2[1] == '0'
  end

  def operations(number1, arg, number2)
    case arg
    when '*'
      number1 * number2
    when '/'
      error('Error! Divided by zero!') if Integer(number2).zero?
      number1 / number2
    when '+'
      number1 + number2
    when '-'
      number1 - number2
    else
      error('Error in operation')
    end
  end
end

calculator = Calculator.new
calculator.calc
