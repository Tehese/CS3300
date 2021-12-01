require 'rails_helper'
require 'devise'

RSpec.describe User, type: :model do
  
  describe 'user registration' do 
    it "Account Created Successful" do 
      user = create(:user) 
      expect(user).to be_valid # user.valid?Pass if is true end
    end
  end

  describe 'password changed successful' do 
    it "pw successful" do 
      user = create(:user)
      login_as(user)
      visit edit_user_password_path
      fill_in 'New password', with: 'p4ssw0rd'
      fill_in 'Confirm new password', with: 'p4ssw0rd'
      click_button 'Change my password'
      expect(page).to have_text 'Your password has been changed successfully.'
    end
  end

  scenario 'with invalid data' do
    visit user_registration
    click_button 'Sign up'
    expect(page).to have_text "Email can't be blank"
    expect(page).to have_text "Password can't be blank"
    expect(page).to have_no_link 'Sign Out'
  end

  feature 'User signs out' do

    scenario 'user signed in' do
      user = create :user
      sign_in user
      visit root_path
      click_link 'Logout'
      expect(page).to have_text 'Signed out successfully.'
      expect(page).to have_no_link 'Logout'
      expect(page).to have_current_path root_path
    end
  end
end
