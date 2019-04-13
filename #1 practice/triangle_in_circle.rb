def check_input(input)
    loop do
        return Float(input)
        rescue ArgumentError => _exception 
            print "\tОшибка, повторите ввод > "

        input = gets
        return nil if input.nil?
    end
end

def check_triangle(a, b, c)
    unless( (a+b)>c && (a+c)>b && (b+c)>a )
        puts "\n\tТакой треугольник не существует!\n\n"
        return false
    end

    return true
end

def input
    a = b = c = radius = 0

    loop do
        print "Введите сторону a > "
        a = check_input(a = gets)
        puts "Введено : #{a}"

        print "\nВведите сторону b > "
        b = check_input(b = gets)
        puts "Введено : #{b}"

        print "\nВведите сторону c > "
        c = check_input(c = gets)
        puts "Введено : #{c}"

        break if check_triangle(a, b, c) == true
    end
 
    print "\nВведите радиус > "
    radius = check_input(radius = gets)
    puts "Введено : #{radius}"

    true_or_false(a, b, c, radius)
end

def true_or_false(a, b, c, radius)

    r = (a*b*c/(4*square_triangle(a, b, c))).round(3)
    #puts "Радиус для этого треугольника = #{r}\n"

    if(radius == r)
        puts "\n\tЭтот треугольник МОЖНО вписать в круг радиуса #{radius}"
    else
        puts "\n\tЭтот треугольник НЕЛЬЗЯ вписать в круг радиуса #{radius}"
    end
   
end

def square_triangle(a, b, c)
    t = (a+b+c)/2 #полупериметр
    s = Math.sqrt(t*(t-a)*(t-b)*(t-c)).round(3)

    #puts "Площадь треугольника = #{s}\n"
end

input