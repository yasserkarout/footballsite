class AttendanceList < ActiveRecord::Base
	has_many :attendance_list_users
  	has_many :users, :through => :attendance_list_users
	belongs_to :match
end
