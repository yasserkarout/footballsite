require 'spec_helper'

describe "attendance_lists/edit" do
  before(:each) do
    @attendance_list = assign(:attendance_list, stub_model(AttendanceList))
  end

  it "renders the edit attendance_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attendance_list_path(@attendance_list), "post" do
    end
  end
end
