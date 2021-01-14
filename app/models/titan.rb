class Titan < ApplicationRecord
    has_many :sightings, dependent: :destroy
end
