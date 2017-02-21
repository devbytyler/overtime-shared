namespace :notification do
  desc "Sends SMS notifcication to employees asking them to log if they had overtime or not"

  task sms: :environment do
    #1. schedule to run at sunday at 5pm
    #2. Iterate over all employees
    #3. Skip Admins
    #4. Send a message that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
  
    #No spaces or dashes
    #has to be 10 chars
    #All chars have to be a number
  end

end
