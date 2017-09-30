class Child < ApplicationRecord
  belongs_to :parent, class_name: "User", foreign_key: "user_id"
  has_many :events
end
