class Course < ActiveRecord::Base
  set_primary_key "sgid"
  attr_accessible :acode, :code, :description, :ects, :examination, :goals, :institute, :lecture_material, :name, :participant_count, :period, :sgid, :specialities, :timetable, :year
  has_many :course_staffs, foreign_key: "course_sgid"
  has_many :course_programmes, foreign_key: "course_sgid"
  has_many :staffs, through: :course_staffs
  has_many :programmes, through: :course_programmes
  has_many :line_items, foreign_key: "course_sgid"
  before_destroy :ensure_not_referenced_by_any_line_item #避免删除正在被使用的商品
  default_scope order: 'institute'

  INSTITUTE_LIST = Course.uniq.pluck(:institute).sort!
  #INSTITUTE_LIST =  Course.select(:institute).map(&:institute).uniq
  
  private  
  def ensure_not_referenced_by_any_line_item
	if line_items.empty?
		return true
	else
		errors.add(:base, 'Line Items Present')
		return false
	end
  end
 
end
