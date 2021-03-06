class RegistrationCoursesController < ApplicationController
  before_action :set_registration_course, only: [:show, :edit, :update, :destroy]

  # GET /registration_courses
  # GET /registration_courses.json
  def index
    @registration_courses = RegistrationCourse.all
  end

  # GET /registration_courses/1
  # GET /registration_courses/1.json
  def show
  end

  # GET /registration_courses/new
  def new
    @registration_course = RegistrationCourse.new
  end

  # GET /registration_courses/1/edit
  def edit
  end

  # POST /registration_courses
  # POST /registration_courses.json
  def create
    @registration_course = RegistrationCourse.new(registration_course_params)

    respond_to do |format|
      if @registration_course.save
        format.html { redirect_to @registration_course, notice: 'Registration course was successfully created.' }
        format.json { render :show, status: :created, location: @registration_course }
      else
        format.html { render :new }
        format.json { render json: @registration_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registration_courses/1
  # PATCH/PUT /registration_courses/1.json
  def update
    respond_to do |format|
      if @registration_course.update(registration_course_params)
        format.html { redirect_to @registration_course, notice: 'Registration course was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration_course }
      else
        format.html { render :edit }
        format.json { render json: @registration_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_courses/1
  # DELETE /registration_courses/1.json
  def destroy
    @registration_course.destroy
    respond_to do |format|
      format.html { redirect_to registration_courses_url, notice: 'Registration course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_course
      @registration_course = RegistrationCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_course_params
      params.require(:registration_course).permit(:grade, :user_id, :course_offering_id)
    end
end
