# frozen_string_literal: true

def input_string(messege)
  loop do
    print "#{messege} > "
    input = gets
    return nil if input.nil?

    if input.strip.empty?
      puts 'Empty line! Please, repeat!'
      next
    end

    string = input.strip.downcase
    puts "Result : #{string}"
    return string
  end
end

def input_number(messege)
  loop do
    print "#{messege} > "
    input = gets
    return nil if input.nil?

    number = Integer(input)
    puts "Result : #{number}"
    return number if number.positive?

    puts 'Error, non positive number! Try again!'

  rescue ArgumentError => _exception
    puts 'Try again!'
  end
end

def check_age(age)
  until age >= 15 && age <= 100
    puts 'Invalid age!'
    age = input_number("\nAge")
  end
  age
end

def check_work_exp(work_exp)
  if work_exp > 15
    'honored'
  elsif work_exp > 5
    'famous'
  else ''
  end
end

def list_of_posts(name, email, age, work_exp)
  print "\n\nList of posts:\n"
  result = check_work_exp(work_exp)

  puts "Head #{result}" if name.eql?('petr petrovich')
  puts "Experienced #{result}" if age >= 45 && age <= 60
  puts "Engineer #{result}" if email.include?('code')
  puts 'Trainee' if work_exp < 2
end

def date_input
  name = input_string("\nFirst name and Last name")
  email = input_string("\nEmail")
  age = check_age(input_number("\nAge"))
  work_exp = input_number("\nWork experience")

  list_of_posts(name, email, age, work_exp)
end

date_input
