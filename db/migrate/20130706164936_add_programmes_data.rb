require 'rubygems'
require 'nokogiri'
require 'open-uri'
class AddProgrammesData < ActiveRecord::Migration
  def up
	Programme.delete_all
	doc = Nokogiri::XML(File.open("courses.xml"))
	doc.css('programme').each do |node|
		children = node.children	
		unless Programme.find_by_id(node['id'])
			Programme.create(			
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
