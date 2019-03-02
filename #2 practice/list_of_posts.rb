def input_string(messege)
    loop do
        print "#{messege} > "
        input = gets
        return nil if input.nil?
        if input.strip.empty?
            puts "Empty line! Please, repeat!"
            next
        end
        return input.strip.downcase
    end
end

def input_number(messege)
    loop do
        print "#{messege} > "
        input = gets
        return nil if input.nil?
        return Integer(input) if Integer(input) > 0
        puts "Error, non positive number! Please, repeat!"
        rescue ArgumentError => _exception
            puts "Error, please repeat!"
    end
end

def check_age(age)
    until age >= 15 && age <= 100
        puts "Invalid age!"
        age = input_number("\nAge")
    end
    return age
end

def check_work_exp(work_exp)
    if work_exp > 15
        return "заслуженный"
    elsif work_exp > 5
        return "известный"
    else return nil
    end
end

def list_of_posts(name, email, age, work_exp)
    print "\n\nList of posts:\n"
    result = check_work_exp(work_exp)

    puts "Руководитель #{result}" if name.eql?("petr petrovich")
    puts "Бывалый #{result}" if age >= 45 && age <= 60
    puts "Инженер #{result}" if email.include?("code")
    puts "Стажёр" if work_exp < 2
end

def input_date
    name = input_string("\nFirst name and Last name")
    puts "Input: #{name}"
    
    email = input_string("\nEmail")
    puts "Input: #{email}"
    
    age = check_age(input_number("\nAge"))
    puts "Input: #{age}"
    
    work_exp = input_number("\nWork experience")
    puts "Input: #{work_exp}"

    list_of_posts(name, email, age, work_exp)
end

input_date
