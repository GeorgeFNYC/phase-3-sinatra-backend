class User < ActiveRecord::Base
    has_many :attends
    has_many :wishlists
    has_many :restaurants, through: :attends
    has_many :eateds


end