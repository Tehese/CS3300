require "rails_helper"
require_relative "../support/controller_macros"


RSpec.describe User, type: :model do
  describe 'user registration' do 
    it "name, email, password and password_You can register if confirmation exists" do
      user = build(:user)
      expect(user).to be_valid # user.valid?Pass if is true 
    end
  end
end



#Create a check for all these
#database_authenticatable, :registerable,
#        :recoverable, :rememberable, :validatable