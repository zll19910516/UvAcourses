require 'rubygems'
require 'nokogiri'
require 'open-uri'
class AddStaffData < ActiveRecord::Migration
  def up
	Staff.delete_all
	doc = Nokogiri::XML(File.open("courses.xml"))
	doc.css('staff').each do |node|
		children = node.children	
		unless Staff.find_by_id(node['id'])
			Staff.create(			
				id: node['id'],
				name: children.css('name').inner_text,
				url: children.css('url').inner_text

			)
		end
	end
		
  end

  def down
  end
end