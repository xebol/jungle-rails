require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Validations' do
    before(:each) do
      @user = User.new(first_name: 'John', last_name: 'Doe', email: 'test@test.com', password: 'password',
      password_confirmation: 'password')
    end

    describe 'when a new user is created with valid credentials' do
      it 'should create a new user successfully' do
        expect(@user).to be_valid
        expect{@user.save}.to change {User.count}.by(1)
      end
    end

    describe 'when user\'s first name is blank' do
      it 'should not be valid' do
        @user.first_name = nil
        expect(@user).not_to be_valid
        expect(@user.errors.full_messages).to include('First name can\'t be blank')
      end
    end

    describe 'when user\'s last name is blank' do
      it 'should not be valid' do
        @user.last_name = nil
        expect(@user).not_to be_valid
        expect(@user.errors.full_messages).to include('Last name can\'t be blank')
      end
    end

    describe 'when user\'s password is blank' do
      it 'should not be valid' do
        @user.password = nil
        expect(@user).not_to be_valid
        expect(@user.errors.full_messages).to include('Password can\'t be blank')
      end

      describe 'password is less than 4 characters' do
        it 'should be minimum of 4 characters' do
          @user.password = 'nil'
          expect(@user).not_to be_valid
          expect(@user.errors.full_messages).to include('Password is too short (minimum is 4 characters)')
        end
      end

      describe 'password and password_confirmation do not match' do
        it 'should not be valid' do
          @user.password_confirmation = 'nil'
          expect(@user).not_to be_valid
          expect(@user.errors.full_messages).to include('Password confirmation doesn\'t match Password')
        end
      end
    end

    describe 'email must not be blank' do
      it 'should not be valid' do
        @user.email = nil
        expect(@user).not_to be_valid
        expect(@user.errors.full_messages).to include('Email can\'t be blank')
      end

      describe 'email must be unique' do
        it 'there cannot be two of the same email' do
          @user1 = User.new(first_name: 'Jane', last_name: 'Doe', email: 'TEST@TEST.com', password: 'pass', password_confirmation: 'pass')
          @user.save
          @user1.save
          
          expect(@user1).not_to be_valid
          expect(@user1.errors.full_messages).to include('Email has already been taken')
        end
      end
    end

    describe '.authenticate_with_credentials' do
      # examples for this class method here
      it 'should not let user log in if credentials are invalid' do
        
      end
    end

    # Rspec and before each
  end
end
