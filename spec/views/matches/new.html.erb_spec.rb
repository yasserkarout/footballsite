require 'spec_helper'

describe "matches/new" do
  before(:each) do
    assign(:match, stub_model(Match,
      :sport => "MyString",
      :description => "MyString",
      :numOfPlayers => 1,
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", matches_path, "post" do
      assert_select "input#match_sport[name=?]", "match[sport]"
      assert_select "input#match_description[name=?]", "match[description]"
      assert_select "input#match_numOfPlayers[name=?]", "match[numOfPlayers]"
      assert_select "input#match_location[name=?]", "match[location]"
    end
  end
end
