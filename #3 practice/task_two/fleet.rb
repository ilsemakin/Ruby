class Fleet
  def initialize
    @cars = []
  end

  def add(car)
      @cars.push(car)
  end
  
  def average_consumption
    sum_gasoline = 0
    @cars.each do |car|
      sum_gasoline += car.gasoline_consumption
    end

    Float(sum_gasoline/@cars.size)
  end

  def number_by_brand(brand)
    count = 0

    @cars.each do |car|
      count+=1 if brand == car.brand 
    end

    count
  end

  def number_by_model(model)
    count = 0

    @cars.each do |car|
      count+=1 if model == car.model
    end

    count
  end
end
