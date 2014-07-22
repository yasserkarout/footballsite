require 'spec_helper'

describe "matches/show" do
  before(:each) do
    @match = assign(:match, stub_model(Match,
      :sport => "Sport",
      :description => "Description",
      :numOfPlayers => 1,
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sport/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/Location/)
  end
end
