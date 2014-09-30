require 'rails_helper'

RSpec.describe Event, :type => :model do

  before { @event = FactoryGirl.build :event }

  it 'can have campaign' do
    expect(@event).to respond_to :campaign
  end

end
