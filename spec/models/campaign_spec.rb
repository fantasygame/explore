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

  it 'can counts team_level' do
    c = FactoryGirl.build(:campaign)
    expect(c).to respond_to('team_level')
  end

  it 'counts team_level properly' do
    c = FactoryGirl.build(:campaign)
    x = FactoryGirl.build(:character)
    y = FactoryGirl.build(:character)
    z = FactoryGirl.build(:character)
    c.characters = [x,y,z]
    x.exp = 3000
    y.exp = 1000
    z.exp = 3000
    expect(c.team_level).to equal 3

  end

  it 'has at least one character to count team_level' do
    c = FactoryGirl.build(:campaign)
    expect(c.team_level).to equal 0
  end



end
