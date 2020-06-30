class Instrument < ApplicationRecord
    has_many :playables
    has_many :artists, through: :playables
end
