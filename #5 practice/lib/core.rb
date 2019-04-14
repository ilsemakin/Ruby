# frozen_string_literal: true

require_relative 'dao'
require_relative 'input'

# start program
class Core
  def initialize
    dao = Dao.new
    @database = dao.read_db
    @commands = { 0 => 'help', 1 => 'show', 2 => 'exit' }
    help
  end

  def run
    input = Input.new
    loop do
      case input.choose(@commands)
      when 0
        help
      when 1
        show
      when 2
        exit
      end
    end
  end

  def show
    @database.courses.each do |course|
      puts "\n#{course.name}"
      course.each do |name, grades|
        puts "Student ID : #{name} - Grade : #{grades}"
      end
    end
  end

  def help
    @commands.each { |key, command| puts "#{key} -> #{command}" }
  end
end
