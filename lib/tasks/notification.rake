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

end
