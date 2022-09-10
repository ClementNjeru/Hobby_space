class User < ActiveRecord::Base
    has_many :Reviews
end