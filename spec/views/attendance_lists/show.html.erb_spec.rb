require 'spec_helper'

describe "attendance_lists/show" do
  before(:each) do
    @attendance_list = assign(:attendance_list, stub_model(AttendanceList))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
