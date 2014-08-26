require 'rails_helper'

RSpec.describe Roll do
  it "can use roll method" do
    expect(Roll).to respond_to "roll"
  end
  it "rolls properly" do
    expect(Roll.roll 4, 1).to be_between(1, 4)
    expect(Roll.roll 100, 1).to be_between(1, 100)
    expect(Roll.roll 20).to be_between(1, 20)
    expect(Roll.roll 12, 4).to be_between(4, 48)
    expect(Roll.roll 100, 14).to be_between(14, 1400)
    expect(Roll.roll 8, 8).to be_between(8, 64)
    expect(Roll.roll 16, 0).to equal 0 
    expect(Roll.roll 0, 10).to raise_error
  end
end


