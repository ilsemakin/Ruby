# frozen_string_literal: true

# create complex number
class MyComplex
  attr_reader :real, :imaginary

  def initialize(real, imaginary)
    @real = Float(real)
    @imaginary = Float(imaginary)
  end

  def add(other)
    MyComplex.new(@real + other.real, @imaginary + other.imaginary)
  end

  def sub(other)
    MyComplex.new(@real - other.real, @imaginary - other.imaginary)
  end

  def multiply(other)
    MyComplex.new(@real * other.real - @imaginary * other.imaginary, @real * other.imaginary + @imaginary * other.real)
  end

  def devide(other)
    re = @real * other.real + @imaginary * other.imaginary
    im = @real * -other.imaginary + @imaginary * other.real
    denomitor = other.real**2 + other.imaginary**2

    MyComplex.new(re / denomitor, im / denomitor)
  end

  def to_s
    "#{@real} + i*#{@imaginary}"
  end
end
