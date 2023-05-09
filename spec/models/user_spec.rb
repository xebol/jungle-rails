require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Validations' do
    before(:each) do
      @user = User.new(first_name: John, last_name: Doe, email: 'test@test.com', password: 'password', password_confirmation: 'password')
    end



    


#Rspec and before each
  end
end
