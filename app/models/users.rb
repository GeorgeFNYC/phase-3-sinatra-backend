class User < ActiveRecord::Base
    has_many :attends
    has_many :wishlists
    has_many :restaurants, through: :attends


end