class Child < ApplicationRecord
  belongs_to :parent, class_name: "User", foreign_key: "user_id"
  has_many :events
  has_many :caretakers, through: :events

  scope :past_events, -> { joins(:events).where('events.end_time < ?', Time.now.to_date)}

  def past_events
    events.where('events.end_time < ?', Time.now.to_date).order(:start_time)
  end

  def future_events
    events.where('events.end_time > ?', Time.now.to_date).order(:start_time)
  end
end
