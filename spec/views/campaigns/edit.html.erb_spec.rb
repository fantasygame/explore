require 'rails_helper'

RSpec.describe "campaigns/edit", :type => :view do
  before(:each) do
    @campaign = assign(:campaign, Campaign.create!(
      :name => "MyString",
      :money => 1
    ))
  end

  it "renders the edit campaign form" do
    render

    assert_select "form[action=?][method=?]", campaign_path(@campaign), "post" do

      assert_select "input#campaign_name[name=?]", "campaign[name]"

      assert_select "input#campaign_money[name=?]", "campaign[money]"
    end
  end
end
