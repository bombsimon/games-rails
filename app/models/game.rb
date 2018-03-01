class Game < ApplicationRecord
    belongs_to :console, required: true
end
