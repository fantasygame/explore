require 'rails_helper'

RSpec.describe "characters/show", :type => :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :name => "Name",
      :exp => 1,
      :user => nil,
      :campaign => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
