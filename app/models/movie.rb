class Movie < ActiveRecord::Base
    def self.ratings
        Movie.select(:rating).distinct.inject([]) {|ratings_array, mov| ratings_array.push mov.rating}
    end
end
