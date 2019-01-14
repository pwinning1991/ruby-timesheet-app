namespace :notification do
  desc "Send SMS notifiaction to employees asking them to log overtime"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard request overtime or confirm your hours for last week: https://pjw-wip-overtime.herokuapp.com"
      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send.sms(number: employee.phone, message: notification_message)
      end
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

