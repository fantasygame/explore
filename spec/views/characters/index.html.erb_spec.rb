require 'rails_helper'

RSpec.describe "characters/index", :type => :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        :name => "Name",
        :exp => 1,
        :user => nil,
        :campaign => nil
      ),
      Character.create!(
        :name => "Name",
        :exp => 1,
        :user => nil,
        :campaign => nil
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
