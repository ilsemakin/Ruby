# frozen_string_literal: true

require_relative 'movie_list'

# core program
class RatingCreator
  def create
    arg = ARGV
    error('Invalid number of arguments!') if arg.size < 2
    error('File no exist!') unless File.exist?(arg[0]) && File.exist?(arg[1])

    movie_list = MovieList.new
    movie_list.read_data(arg[0])
    movie_list.save_sorted_list(arg[1])
    show_min_max(movie_list)
    list_movies(movie_list)
  end

  private

  def show_min_max(movie_list)
    puts "min rating - #{movie_list.min}"
    puts "max rating - #{movie_list.max}"
  end

  def list_movies(movie_list)
    movie_list.each_with_index { |movie, index| puts "#{index + 1} - #{movie}" }
  end

  def error(message)
    puts message
    exit
  end
end
