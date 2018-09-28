class Movie < ActiveRecord::Base
 def self.ratings
    return ['G','PG','PG-13','R']
  end
    
 def self.movies(filters, sort_field)
    self.where({:rating => filters}).order(sort_field)
 end
    
 def self.ratings
    self.pluck(:rating).uniq
 end
end
