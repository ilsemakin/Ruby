class Auto

  attr_reader :brand, :model, :gasoline_consumption

  def initialize(brand, model, manifacture_year, gasoline_consumption)
    @brand = brand
    @model = model
    @manifacture_year = manifacture_year
    @gasoline_consumption = Float(gasoline_consumption)
  end

  def to_s
    "Brand:#{@brand} | Model:#{@model} | Manifacture_year:#{@manifacture_year} | Gasoline_consumption:#{@gasoline_consumption}"
  end
end
