

# creating one movie
class Movie
    include Comparable
    attr_reader :title, :kinopoisk, :imdb, :metacritic, :rotten_tomatoes
    def initialize(title, kinopoisk, imdb, metacritic, rotten_tomatoes)
        @title = title
        @kinopoisk = Integer(kinopoisk)
        @imdb = Integer(imdb)
        @metacritic = Integer(metacritic)
        @rotten_tomatoes = Integer(rotten_tomatoes)
    end

    def ogon_rating
        (@imdb + @kinopoisk + (@metacritic + @rotten_tomatoes) /2 ) / 3
    end

    def <=>(other)
        ogon_rating <=> other.ogon_rating
    end

    def to_s
        "#{@title}, #{@kinopoisk}, #{@imdb}, #{@metacritic}, #{@rotten_tomatoes}"
    end
end

