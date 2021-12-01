require 'rails_helper'
require 'devise'

RSpec.describe User, type: :model do
  
  describe 'user registration' do 
    it "Account Created Successful" do 
      user = build(:user) 
      expect(user).to be_valid # user.valid?Pass if is true end
    end
  end

  describe 'password changed successful' do 
    it "pw successful" do 
      user = build(:user) 
      expect(user).to be_valid # user.valid?Pass if is true end
    end
  end

  describe 'user registration' do 
    it "Account Created Successful" do 
      user = build(:user) 
      expect(user).to be_valid # user.valid?Pass if is true end
    end
  end

  describe 'user registration' do 
    it "Account Created Successful" do 
      user = build(:user) 
      expect(user).to be_valid # user.valid?Pass if is true end
    end
  end

  #describe 'unique email' do
   # it 'should not be valid' do
    #  user = build(:user)
     # user2 = build(:user)
      #expect(user).to_not be_valid
    #end
  #end

end
