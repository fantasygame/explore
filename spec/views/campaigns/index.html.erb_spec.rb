require 'rails_helper'

RSpec.describe "campaigns/index", :type => :view do
  before(:each) do
    assign(:campaigns, [
      Campaign.create!(
        :name => "Campaigname",
        :money => 123
      ),
      Campaign.create!(
        :name => "Campaigname",
        :money => 123
      )
    ])
  end

  it "renders a list of campaigns" do
    render
    assert_select "tr>td", :text => "Campaigname".to_s, :count => 2
    assert_select "tr>td", :text => 123.to_s, :count => 2
  end
end
