require 'rubygems'
require 'nokogiri'
require 'open-uri'
class AddCourseStaffData < ActiveRecord::Migration
  def up
	doc = Nokogiri::XML(File.open("courses.xml"))
	doc.css('course').each do |node|
		children = node.children
		children.css('staff').each do |node2|
			CourseStaff.create(			
				staff_id: node2['id'],
				course_sgid: node['sgid']

			)
		end
	end
		
  end

  def down
  end
end
