class Programme < ActiveRecord::Base
  attr_accessible :id, :name, :url
  has_many :course_programmes
end
