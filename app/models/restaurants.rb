class Restaurant < ActiveRecord::Base
    belongs_to :user
    belongs_to :visited
end