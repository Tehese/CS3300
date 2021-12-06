require "rails_helper"
require_relative "../support/controller_macros"


RSpec.describe 'User Model Testing', type: :model do
  
  before do
    @user = build(:user)
  end

  describe 'Require Email' do
    it 'Fails if empty' do
      @user.email = ''
      expect(@user.valid?).to eq(false)
    end
  end

  describe 'Require Password' do
    it 'Fails if empty' do
      @user.password = ''
      expect(@user.valid?).to eq(false)
    end
  end
end

