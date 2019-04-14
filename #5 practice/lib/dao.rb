# frozen_string_literal: true

require 'psych'
require_relative 'database'
require_relative 'student'
require_relative 'course'
require_relative 'student_registry'
require_relative 'course_registry'

# processing file
class Dao
  def read_db
    data = Psych.load_file(File.expand_path('../data/data.yaml', __dir__))
    DataBase.new(parse_students(data), parse_courses(data))
  end

  def parse_students(data)
    students = StudentRegistry.new
    data['students'].each do |student|
      students.add(Student.new(student['id'], student['name'], student['surname']))
    end
    students
  end

  def parse_courses(data)
    courses = CourseRegistry.new
    data['courses'].each do |course|
      create_course = Course.new(course['name'])
      course['grades'].each do |student|
        create_course.student_mark(student['student_id'], student['grade'])
      end
      courses.add(create_course)
    end
    courses
  end
end
