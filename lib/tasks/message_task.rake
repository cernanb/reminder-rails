namespace :message_task do
  desc "TODO"
  task send_msg: :environment do
    @client = Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_API_KEY']
    @event = Event.first
    message = @client.messages.create(
        body: "Don't forget to take #{@event.child.first_name} to #{@event.name} on #{@event.start_time.strftime("%b %d, %Y %l:%M %p")}",
        to: "+18585315793",    # Replace with your phone number
        from: "+16196781248")  # Replace with your Twilio number
  end

end
