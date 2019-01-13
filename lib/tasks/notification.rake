namespace :notification do
  desc "Send SMS notifiaction to employees asking them to log overtime"
  task sms: :environment do
    #schedule to run at Sunday at 5pm
    # Iterate over all employees
    # Skip adminUsers
    # Send a message that has instructions and a link to log time
    User.all.each do |user|
      SmsTool.send.sms()
    end
  end
  desc "Sends mailnotifiaction to managers (admin users) each day to infrom of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all
    if submitted_posts.count > 0 
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
      

    end
  end

