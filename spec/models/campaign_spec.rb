require 'rails_helper'

RSpec.describe Campaign, :type => :model do
  it 'has name' do
    c = FactoryGirl.build(:campaign)
    c.name = ''
    expect(c).to_not be_valid
  end
end
