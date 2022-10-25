class Restaurant < ActiveRecord::Base
    has_many :attends
    has_many :wishlists
    has_many :users, through: :attends

end