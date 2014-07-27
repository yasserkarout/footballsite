class AddMatchIdToAttendanceList < ActiveRecord::Migration
  def change
    add_column :attendance_lists, :match_id, :integer
  end
end
