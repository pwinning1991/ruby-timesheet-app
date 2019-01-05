require 'rails_helper'

describe 'admin dashboard' do
  it 'it does not allow users to access wihtout being signed in' do
    visit admin_root_path
    expect(current_path).to eq(new_user_session_path)
  end
  it 'cannot be reacehed by a non admin user' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit admin_root_path
    expect(current_path).to eq(root_path)
  end
  it 'can be reacehed by a admin user' do
    admin_user = FactoryGirl.create(:admin_user)
    login_as(admin_user, :scope => :user)
    visit admin_root_path
    expect(current_path).to eq(admin_root_path)
  end


end
