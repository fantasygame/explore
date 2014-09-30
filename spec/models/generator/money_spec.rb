require 'rails_helper'

RSpec.describe Generator::Money do

  before { @gen = Generator::Money.new }

  it 'generate random money treasure' do
    FactoryGirl.create :wealth, level: 1, money: 300
    expect(@gen.generate 1).to be_between 5, 480

    FactoryGirl.create :wealth, level: 2, money: 900
    expect(@gen.generate 2).to be_between 12, 1188

    FactoryGirl.create :wealth, level: 3, money: 2700
    expect(@gen.generate 3).to be_between 18, 1782

    FactoryGirl.create :wealth, level: 4, money: 5400
    expect(@gen.generate 4).to be_between 238, 2376

    FactoryGirl.create :wealth, level: 5, money: 9000
    expect(@gen.generate 5).to be_between 324, 3240

    FactoryGirl.create :wealth, level: 7, money: 19000
    expect(@gen.generate 7).to be_between 53, 5320

    FactoryGirl.create :wealth, level: 20, money: 760000
    expect(@gen.generate 20).to be_between 1672, 167200
  end

end

