class Event < ApplicationRecord
    validates :title, :details, :location,
                             presence: true
end
