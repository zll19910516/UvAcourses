require 'nokogiri'
require 'open-uri'
require 'rubygems'
require 'sqlite'
courses = Nokogiri::XML(File.open("courses.xml"))
db = SQLite::Database.new()
courses.css('course').each do |node|
  children = node.children

  Course.create(
    acode: node['acode'],
	code: node['code'],
	sgid: node['sgid'],
    name: children.css('name').inner_text,
    ects: children.css('ects').inner_text,
    year: children.css('year').inner_text,
	period: children.css('period').inner_text,
	institute: children.css('institute').inner_text,
	description: children.css('description').inner_text,
	timetable: children.css('timetable').inner_text,
	lecture_material: children.css('lecture_material').inner_text,
	goals: children.css('goals').inner_text,
	participant_count: children.css('participant_count').inner_text,
	specialities: children.css('specialities').inner_text,
	examination: children.css('examination').inner_text
  )
  
end