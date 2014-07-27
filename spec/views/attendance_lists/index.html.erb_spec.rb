require 'spec_helper'

describe "attendance_lists/index" do
  before(:each) do
    assign(:attendance_lists, [
      stub_model(AttendanceList),
      stub_model(AttendanceList)
    ])
  end

  it "renders a list of attendance_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
