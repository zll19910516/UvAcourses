class CourseStaff < ActiveRecord::Base
  attr_accessible :course_sgid, :staff_id, :course, :staff
  belongs_to :course, foreign_key: "course_sgid"
  belongs_to :staff
end
