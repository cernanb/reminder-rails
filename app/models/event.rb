class Event < ApplicationRecord
  belongs_to :child
  belongs_to :caretaker
end
