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

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end

end
