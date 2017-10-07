class TwilioClient
  require 'twilio-ruby'

  def initialize
    @client = Twilio::REST::Client.new ENV["TWILIO_SID"], ENV["TWILIO_API_KEY"]
  end

  def notify
    @event = Event.first
    @client.messages.create(
      :from => "+16196781248",
      :to => "+18585315793",
      :body => "Don't forget to take #{@event.child.first_name} to #{@event.name} on #{@event.start_time.strftime("%b %d, %Y %l:%M %p")}"
    )
  end
end