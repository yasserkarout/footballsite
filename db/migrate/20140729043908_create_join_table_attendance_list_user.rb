class CreateJoinTableAttendanceListUser < ActiveRecord::Migration
  def change
    create_join_table :attendance_lists, :users do |t|
      # t.index [:attendance_list_id, :user_id]
      # t.index [:user_id, :attendance_list_id]
    end
  end
end
