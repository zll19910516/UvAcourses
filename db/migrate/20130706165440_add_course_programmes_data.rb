require 'rubygems'
require 'nokogiri'
require 'open-uri'
class AddCourseProgrammesData < ActiveRecord::Migration
  def up
	doc = Nokogiri::XML(File.open("courses.xml"))
	doc.css('course').each do |node|
		children = node.children
		children.css('programme').each do |node2|
			CourseProgramme.create(			
				programme_id: node2['id'],
				course_sgid: node['sgid']

			)
		end
	end
  end

  def down
  end
end
