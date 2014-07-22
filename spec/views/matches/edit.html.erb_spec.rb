require 'spec_helper'

describe "matches/edit" do
  before(:each) do
    @match = assign(:match, stub_model(Match,
      :sport => "MyString",
      :description => "MyString",
      :numOfPlayers => 1,
      :location => "MyString"
    ))
  end

  it "renders the edit match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", match_path(@match), "post" do
      assert_select "input#match_sport[name=?]", "match[sport]"
      assert_select "input#match_description[name=?]", "match[description]"
      assert_select "input#match_numOfPlayers[name=?]", "match[numOfPlayers]"
      assert_select "input#match_location[name=?]", "match[location]"
    end
  end
end
