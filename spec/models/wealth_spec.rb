require 'rails_helper'

RSpec.describe Wealth, :type => :model do

  before { @wealth = FactoryGirl.build(:wealth) }

  it 'has level' do
    @wealth.level = nil
    expect(@wealth).to_not be_valid
    @wealth.level = 1
    expect(@wealth).to be_valid
  end

  it 'has money' do
    @wealth.money = nil
    expect(@wealth).to_not be_valid
    @wealth.money = 1000
    expect(@wealth).to be_valid
  end
end
