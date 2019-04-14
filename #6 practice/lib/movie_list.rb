
require 'csv'
require_relative 'movie'

# processing list of movies
class MovieList
    def initialize
        @movies = []
    end

    def read_data(file)
        CSV.foreach(file, headers: true) do |row|
            movie = Movie.new(row['title'], row['kinopoisk'], row['imdb'], row['metacritic'], row['rotten_tomatoes'])
            @movies.push(movie)    
        end
    end

    def save_sorted_list(file)
        File.open(file, 'w') do |file| 
            @movies.sort!.each {|movie| file.write("#{movie} | #{movie.ogon_rating}\n")}
        end
    end
end
