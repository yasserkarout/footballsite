require 'spec_helper'

describe "matches/index" do
  before(:each) do
    assign(:matches, [
      stub_model(Match,
        :sport => "Sport",
        :description => "Description",
        :numOfPlayers => 1,
        :location => "Location"
      ),
      stub_model(Match,
        :sport => "Sport",
        :description => "Description",
        :numOfPlayers => 1,
        :location => "Location"
      )
    ])
  end

  it "renders a list of matches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sport".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
