require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should create a new user' do
      @user = User.new(
        name: 'Test User',
        email: 'firsttest@test.com',
        password: 'password',
        password_confirmation: 'password'
      )
      expect(@user).to be_valid
    end
    it 'should not create a new user if password and password_confirmation do not match' do
      @user = User.new(
        name: 'Test User',
        email: 'secondtest@test.com',
        password: 'password',
        password_confirmation: 'drowssap'
      )
      expect(@user).not_to be_valid
    end
    it 'should not create a new user if email is not unique' do
      @user1 = User.new(
        name: 'First Guy',
        email: 'first@first.com',
        password: 'password',
        password_confirmation: 'password'
      )
      @user1.save
      @user2 = User.new(
        name: 'Second Guy',
        email: 'first@first.com',
        password: 'password',
        password_confirmation: 'password'
      )
      expect(@user2).not_to be_valid
    end
    it 'should not create a new user if email is not unique (case insensitive)' do
      @user1 = User.new(
        name: 'First Guy',
        email: 'first@first.com',
        password: 'password',
        password_confirmation: 'password'
      )
      @user1.save
      @user2 = User.new(
        name: 'Second Guy',
        email: 'FIRST@FIRST.com',
        password: 'password',
        password_confirmation: 'password'
      )
      expect(@user2).not_to be_valid
    end
    it 'should not create a new user if email is not present' do
      @user = User.new(
        name: 'Test User',
        email: nil,
        password: 'password',
        password_confirmation: 'password'
      )
      expect(@user).not_to be_valid
    end
    it 'should not create a new user if name is not present' do
      @user = User.new(
        name: nil,
        email: 'test@test.com',
        password: 'password',
        password_confirmation: 'password'
      )
      expect(@user).not_to be_valid
    end
    it 'should not create a new user if password is not present' do
      @user = User.new(
        name: 'Test User',
        email: 'test@test.com',
        password: nil,
        password_confirmation: nil
      )
      expect(@user).not_to be_valid
    end
    it 'should not create a new user if password is less than 8 characters' do
      @user = User.new(
        name: 'Test User',
        email: 'test@test.com',
        password: 'pass',
        password_confirmation: 'pass'
      )
      expect(@user).not_to be_valid
    end
  end
end
