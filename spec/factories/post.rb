FactoryGirl.define do
  factory :post do
    date Date.today
    work_performed "Some work_performed"
    daily_hours 12.5
    user
  end
  factory :second_post, class: "Post" do
    date Date.yesterday
    work_performed "Some more content"
    daily_hours 3.5
    user
  end
  factory :post_from_other_user, class: "Post" do
    date Date.yesterday
    work_performed "Some more content"
    daily_hours 3.5
    non_authorized_user
  end
end
