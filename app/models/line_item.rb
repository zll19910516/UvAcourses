class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :course_sgid, :course, :cart
  belongs_to :course, foreign_key: "course_sgid"
  belongs_to :cart
  belongs_to :order
end
