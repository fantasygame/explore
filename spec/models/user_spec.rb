require 'rails_helper'

RSpec.describe User, :type => :model do

  before { @user = FactoryGirl.build(:user) }

  it 'can have characters' do
    expect(@user).to respond_to :characters
  end

  it 'can have campaigns' do
    expect(@user).to respond_to :campaigns
  end

  it 'has campaign through character' do
    campaign = FactoryGirl.build :campaign, name: 'Epic Campaign'
    character = FactoryGirl.build :character, campaign: campaign
    @user.characters = [character]
    @user.save
    expect(@user.campaigns.first.name).to eq 'Epic Campaign'
  end

  it 'calculates total exp' do
    c1 = FactoryGirl.build :character, exp: 100
    c2 = FactoryGirl.build :character, exp: 500
    c3 = FactoryGirl.build :character, exp: 400
    @user.characters = [c1, c2, c3]
    expect(@user.total_exp).to eq 1000
  end

  it 'calculates total level' do
    c1 = FactoryGirl.build :character, exp: 200
    c2 = FactoryGirl.build :character, exp: 500
    c3 = FactoryGirl.build :character, exp: 400
    @user.characters = [c1, c2, c3]
    expect(@user.total_level).to eq 2
    c1.exp = 2100
    @user.characters = [c1, c2, c3]
    expect(@user.total_level).to eq 3
  end

end
