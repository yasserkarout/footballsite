require 'spec_helper'

describe "attendance_lists/new" do
  before(:each) do
    assign(:attendance_list, stub_model(AttendanceList).as_new_record)
  end

  it "renders new attendance_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attendance_lists_path, "post" do
    end
  end
end
