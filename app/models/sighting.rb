class Sighting < ApplicationRecord
    belongs_to :titan

    validates :location, presence: true
    
end
