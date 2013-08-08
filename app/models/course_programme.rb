class CourseProgramme < ActiveRecord::Base
  attr_accessible :course_sgid, :programme_id
  attr_accessible :course, :programme
  belongs_to :course, foreign_key: "course_sgid"
  belongs_to :programme
end
