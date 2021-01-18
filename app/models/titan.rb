class Titan < ApplicationRecord
    has_many :sightings, dependent: :destroy

    validates :nickname, presence: true
    validates :details, presence: true
end
