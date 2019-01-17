require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "creation" do
    before do
     user = User.create(email: 'testpost@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', first_name: 'Jon', last_name: 'snow')
     @post = FactoryGirl.create(:post)
    end
    it "can be created" do
      expect(@post).to be_valid
    end

    it "cannot be created without a date, work_performed, and daily_hours request" do
      @post.date = nil
      @post.work_performed = nil
      @post.daily_hours = nil
      expect(@post).to_not be_valid

    end

    it "has an daily_hours request greater then 0.0" do
      @post.daily_hours = 0.0 
      expect(@post).to_not be_valid
    end
  end
end
