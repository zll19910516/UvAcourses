class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy #line_items依赖于cart的存在
  
  def add_course(course_sgid)
	current_item = line_items.find_by_course_sgid(course_sgid)
	unless current_item
		current_item = line_items.build(course_sgid: course_sgid)
	end
	current_item
  end
  
end
