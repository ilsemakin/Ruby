
require_relative 'movie_list'

# core program
class RatingCreator
    def create
        arg = ARGV
        error('Invalid number of arguments') if arg.size < 2
        error('file no exist!') unless File.exist?(arg[0]) || File.exist?(arg[1])
        
        movie_list = MovieList.new
        movie_list.read_data(arg[0])
        movie_list.save_sorted_list(arg[1])
    end

    private
    
    def error(message)
        puts message
        exit
    end
end