# frozen_string_literal: true

# creating one student
class Student
  attr_accessor :id, :name, :surname

  def initialize(id, name, surname)
    @id = id
    @name = name
    @surname = surname
  end
end
