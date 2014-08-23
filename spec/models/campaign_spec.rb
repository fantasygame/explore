require 'rails_helper'

RSpec.describe Campaign, :type => :model do
  it 'has name' do
    c = FactoryGirl.build(:campaign)
    c.name = ''
    expect(c).to_not be_valid
  end

  it 'has name no shorter than 3 characters' do
    c = FactoryGirl.build(:campaign)
    c.name = 'Ca'
    expect(c).to_not be_valid
    expect(c.errors[:name]).to include('is too short (minimum is 3 characters)')
  end

  it 'can have characters' do
    c = FactoryGirl.build(:campaign)
    expect(c).to respond_to('characters')
  end

  it 'can have users' do
    c = FactoryGirl.build(:campaign)
    expect(c).to respond_to('users')
  end

  it 'has at least one character' do
    c = FactoryGirl.build(:campaign)
    c.characters = []
    expect(c).not_to be_valid
  end

  it 'has at least one users' do
    c = FactoryGirl.build(:campaign)
    c.users = []
    expect(c).not_to be_valid
  end

end
