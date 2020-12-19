require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do

    it 'ensures name presence' do
      users = User.new(email: 'something@gmail.com',  password: 'password', credit: 'number').save
      expect(users).to eq(false)
    end

    it 'ensures type presence' do
      users = User.new(email: 'something@gmail.com', name: 'name', password: 'password', credit: 'number').save
      expect(users).to eq(false)
    end

    it 'ensures email presence' do
      users = User.new(name: 'name', password: 'password', credit: 'number').save
      expect(users).to eq(false)
    end

    it 'ensures password presence' do
      users = User.new(name: 'name', credit: 'number', email: 'something@gmail.com').save
      expect(users).to eq(false)
    end

    it 'ensures credit presence' do
      users = User.new(name: 'name', password: 'password', email: 'something@gmail.com').save
      expect(users).to eq(false)
    end

    it 'should create user sucessfully' do
      users = User.new(name: 'sometitle', type: 'NormalUser', email:"something@gmail.com", password:"words", credit:"numbers").save
      expect(users).to eq(true)
    end
  end
end
