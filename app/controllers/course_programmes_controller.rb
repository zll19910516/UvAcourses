class CourseProgrammesController < ApplicationController
  # GET /course_programmes
  # GET /course_programmes.json
  def index
    @course_programmes = CourseProgramme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_programmes }
    end
  end

  # GET /course_programmes/1
  # GET /course_programmes/1.json
  def show
    @course_programme = CourseProgramme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_programme }
    end
  end

  # GET /course_programmes/new
  # GET /course_programmes/new.json
  def new
    @course_programme = CourseProgramme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_programme }
    end
  end

  # GET /course_programmes/1/edit
  def edit
    @course_programme = CourseProgramme.find(params[:id])
  end

  # POST /course_programmes
  # POST /course_programmes.json
  def create
    @course_programme = CourseProgramme.new(params[:course_programme])

    respond_to do |format|
      if @course_programme.save
        format.html { redirect_to @course_programme, notice: 'Course programme was successfully created.' }
        format.json { render json: @course_programme, status: :created, location: @course_programme }
      else
        format.html { render action: "new" }
        format.json { render json: @course_programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_programmes/1
  # PUT /course_programmes/1.json
  def update
    @course_programme = CourseProgramme.find(params[:id])

    respond_to do |format|
      if @course_programme.update_attributes(params[:course_programme])
        format.html { redirect_to @course_programme, notice: 'Course programme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_programmes/1
  # DELETE /course_programmes/1.json
  def destroy
    @course_programme = CourseProgramme.find(params[:id])
    @course_programme.destroy

    respond_to do |format|
      format.html { redirect_to course_programmes_url }
      format.json { head :no_content }
    end
  end
end
