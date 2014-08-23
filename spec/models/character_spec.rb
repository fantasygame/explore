require 'rails_helper'

RSpec.describe Character, :type => :model do

  before(:each) do
    @character = FactoryGirl.build(:character)
  end

  it "can't have empty exp" do
    @character.exp = nil
    expect(@character).not_to be_valid
    expect(@character.errors[:exp]).to include("can't be blank")
  end

  it "can't have negative exp" do
    @character.exp = -10
    expect(@character).not_to be_valid
  end

  describe "level" do

    it "can be read" do
      expect(@character).to respond_to("level")
    end

    it "can't calculate from negative value" do
      @character.exp = -1
      expect(@character.level).to raise_exception
    end

    it "calculates properly" do
      @character.exp = 100
      expect(@character.level).to equal 1

      @character.exp = 999
      expect(@character.level).to equal 1

      @character.exp = 1000
      expect(@character.level).to equal 2

      @character.exp = 48000
      expect(@character.level).to equal 10

      @character.exp = 195000
      expect(@character.level).to equal 20

      @character.exp = 210000
      expect(@character.level).to equal 21

      @character.exp = 254000
      expect(@character.level).to equal 23
    end

  end

end
