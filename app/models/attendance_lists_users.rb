class AttendanceListsUsers < ActiveRecord::Base

  belongs_to :user
  belongs_to :attendance_list
end