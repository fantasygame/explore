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
    expect(c).to_not be_valid
    expect(c.errors[:name]).to include('is too short (minimum is 3 characters)')
  end
end
