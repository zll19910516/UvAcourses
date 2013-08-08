class CourseStaffsController < ApplicationController
  # GET /course_staffs
  # GET /course_staffs.json
  def index
    @course_staffs = CourseStaff.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_staffs }
    end
  end

  # GET /course_staffs/1
  # GET /course_staffs/1.json
  def show
    @course_staff = CourseStaff.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_staff }
    end
  end

  # GET /course_staffs/new
  # GET /course_staffs/new.json
  def new
    @course_staff = CourseStaff.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_staff }
    end
  end

  # GET /course_staffs/1/edit
  def edit
    @course_staff = CourseStaff.find(params[:id])
  end

  # POST /course_staffs
  # POST /course_staffs.json
  def create
    @course_staff = CourseStaff.new(params[:course_staff])

    respond_to do |format|
      if @course_staff.save
        format.html { redirect_to @course_staff, notice: 'Course staff was successfully created.' }
        format.json { render json: @course_staff, status: :created, location: @course_staff }
      else
        format.html { render action: "new" }
        format.json { render json: @course_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_staffs/1
  # PUT /course_staffs/1.json
  def update
    @course_staff = CourseStaff.find(params[:id])

    respond_to do |format|
      if @course_staff.update_attributes(params[:course_staff])
        format.html { redirect_to @course_staff, notice: 'Course staff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_staffs/1
  # DELETE /course_staffs/1.json
  def destroy
    @course_staff = CourseStaff.find(params[:id])
    @course_staff.destroy

    respond_to do |format|
      format.html { redirect_to course_staffs_url }
      format.json { head :no_content }
    end
  end
end
