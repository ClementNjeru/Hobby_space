class Movie < ActiveRecord::Base
    has_many :Reviews
end