class Staff < ActiveRecord::Base
  attr_accessible :id, :name, :url
  has_many :course_staffs
end
