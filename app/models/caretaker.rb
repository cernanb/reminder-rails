class Caretaker < ApplicationRecord
  has_many :events
  has_many :children, through: :events
end
