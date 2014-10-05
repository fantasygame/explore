require 'rails_helper'

RSpec.describe "campaigns/show", :type => :view do
  before(:each) do
    @campaign = assign(:campaign, Campaign.create!(
      :name => "Name",
      :money => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
