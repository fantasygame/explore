require 'rails_helper'

RSpec.describe "characters/edit", :type => :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :name => "MyString",
      :exp => 1,
      :user => nil,
      :campaign => nil
    ))
  end

  it "renders the edit character form" do
    render

    assert_select "form[action=?][method=?]", character_path(@character), "post" do

      assert_select "input#character_name[name=?]", "character[name]"

      assert_select "input#character_exp[name=?]", "character[exp]"

      assert_select "input#character_user_id[name=?]", "character[user_id]"

      assert_select "input#character_campaign_id[name=?]", "character[campaign_id]"
    end
  end
end
