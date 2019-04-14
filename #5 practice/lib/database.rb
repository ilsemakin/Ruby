# frozen_string_literal: true

# creating skin
class DataBase
  attr_reader :students, :courses
  def initialize(students, courses)
    @students = students
    @courses = courses
  end
end
