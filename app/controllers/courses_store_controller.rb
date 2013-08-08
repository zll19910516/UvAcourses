class CoursesStoreController < ApplicationController
  def index
	@cart = current_cart
	@courses = Course.paginate page: params[:page], order: 'institute', order: 'name', 
       per_page: 10

	@page_now = params[:page]
	
	readCookie
    respond_to do |format|
      format.html
      format.json { render json: @courses }
    end
  end
  
  def show
	@cart = current_cart
	@course = Course.find_by_sgid(params[:course_sgid])
	@page_now = params[:page_now]
	@info = params[:info]
	@type = params[:type]
	@cart_id = params[:cart_id]
	
	readCookie
	
	shops = (cookies[:shops] || "")
	shops << " #{@course.sgid}" unless shops.include?(@course.sgid)
	cookies[:shops] = {value: shops, expires: Time.now + 3600}
	
	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end
  
  def result
	@cart = current_cart
	@info = params[:info]
	@type = params[:type]
	@page_now = params[:page]
	readCookie
	con = []
	if @type == "staff"
		@courses = Course.joins(:staffs).paginate :page => params[:page],
                                  :per_page => 10,
                                  :conditions => ["staffs.name like ?", "%#{@info}%"],
								  :group => 'sgid',
								  :order => 'institute',
								  :order => 'name'
	else
		if @type == "sgid"
			con = ["sgid like ?", "%#{@info}%"]
		elsif @type == "title"
			con = ["name like ?", "%#{@info}%"]
		elsif @type == "descriptions"
			con = ["description like ?", "%#{@info}%"]
		end
		@courses = Course.paginate :page => params[:page],
                                  :per_page => 10,
                                  :conditions => con,
								  :order => 'institute',
								  :order => 'name'
	end							  
	
	respond_to do |format|
      format.html
      format.json { render json: @course }
    end
	
  end
  
  
  def readCookie
	if cookies[:shops]
		cookieshops = cookies[:shops].split(" ")
		@views = []
		cookieshops.each do |sgid|
			@views << Course.find_by_sgid(sgid)
		end if cookieshops
	end
  end
  
   def destroy
	cookies[:shops] = nil
	
	respond_to do |format|
      format.html { redirect_to courses_store_url }
	  format.js
      format.json { head :no_content }
    end
  end
    
end
