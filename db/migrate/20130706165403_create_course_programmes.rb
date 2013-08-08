class CreateCourseProgrammes < ActiveRecord::Migration
  def change
    create_table :course_programmes do |t|
      t.string :course_sgid
      t.integer :programme_id

      t.timestamps
    end
  end
end
