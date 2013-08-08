class CreateCourseStaffs < ActiveRecord::Migration
  def change
    create_table :course_staffs do |t|
      t.string :course_sgid
      t.integer :staff_id

      t.timestamps
    end
  end
end
