# frozen_string_literal: true

require 'csv'
require_relative 'movie'

# processing list of movies
class MovieList
  include Enumerable
  def initialize
    @movies = []
  end

  def read_data(file_input)
    CSV.foreach(file_input, headers: true) do |row|
      movie = Movie.new(row['title'], row['kinopoisk'], row['imdb'], row['metacritic'], row['rotten_tomatoes'])
      @movies.push(movie)
    end
  end

  def save_sorted_list(file_output)
    File.open(file_output, 'w') do |file|
      @movies.sort!.each { |movie| file.write("#{movie} | #{movie.ogon_rating}\n") }
    end
  end

  def each
    @movies.each { |movie| yield movie }
  end
end
