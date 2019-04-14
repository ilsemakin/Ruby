# frozen_string_literal: true

# processing students
class StudentRegistry
  def initialize
    @students = []
  end

  def add(student)
    @students.push(student)
  end

  def delete(student)
    @students.delete(student)
  end

  def each
    @students.each { |value| yield value }
  end
end
