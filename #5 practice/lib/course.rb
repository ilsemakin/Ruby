# frozen_string_literal: true

# creating one course
class Course
  attr_reader :name

  def initialize(name)
    @name = name
    @students = {}
  end

  def student_mark(student, mark)
    @students[student] = mark
  end

  def each
    @students.each { |key, value| yield(key, value) }
  end
end
