@user = User.create(email: 'test@test.com', 
                    password: 'asdfasdf', 
                    password_confirmation: 'asdfasdf', 
                    first_name: 'Jon', 
                    last_name: 'Snow',
                    phone: "123123123" ) 

puts "1 user created"

AdminUser.create(email: 'admin@admin.com', 
                 password: 'asdfasdf', 
                 password_confirmation: 'asdfasdf', 
                 first_name: 'Admin', 
                 last_name: 'User',
                 phone: "12312334")

puts "1 admin user created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been created"
