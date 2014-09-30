require 'rails_helper'

RSpec.describe LevelCalculator, :type => :class do

  before { @calc = LevelCalculator.new }

  it "calculates level properly" do
    expect(@calc.level 100).to equal 1
    expect(@calc.level 999).to equal 1
    expect(@calc.level 1000).to equal 2
    expect(@calc.level 48000).to equal 10
    expect(@calc.level 195000).to equal 20
    expect(@calc.level 210000).to equal 21
    expect(@calc.level 254000).to equal 23
  end
end
