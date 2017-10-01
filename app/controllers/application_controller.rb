class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home

  end

  def test
    account_sid = "AC842d73e1ab177c687d03ed6997d2b0f0" # Your Account SID from www.twilio.com/console
    auth_token = "2e0ac1cebe46a9fccc106d49d826d4e2"   # Your Auth Token from www.twilio.com/console

    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.messages.create(
        body: "Hello from Ruby",
        to: "+18585315793",    # Replace with your phone number
        from: "+16196781248")  # Replace with your Twilio number

    puts message.sid
  end
end
