class Attend < ActiveRecord::Base
    belongs_to :user
    belongs_to :restaurant

    scope :been_to, -> { where(been_to: true) }

end