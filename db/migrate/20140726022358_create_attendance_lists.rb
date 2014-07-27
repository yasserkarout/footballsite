class CreateAttendanceLists < ActiveRecord::Migration
  def change
    create_table :attendance_lists do |t|

      t.timestamps
    end
  end
end
