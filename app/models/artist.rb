class Artist < ApplicationRecord
    has_many :playables
    has_many :instruments, through: :playables

    validates :name, presence: true
    validates :title, uniqueness: true

end
