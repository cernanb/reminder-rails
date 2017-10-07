namespace :message_task do
  desc "TODO"
  task notify: :environment do
    client = TwilioClient.new
    client.notify
  end

end
