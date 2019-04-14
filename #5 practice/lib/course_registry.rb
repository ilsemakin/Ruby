# frozen_string_literal: true

# processing courses
class CourseRegistry
  def initialize
    @courses = []
  end

  def add(course)
    @courses.push(course)
  end

  def delete(course)
    @courses.delete(course)
  end

  def each
    @courses.each { |value| yield value }
  end
end
