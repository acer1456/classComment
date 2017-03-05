class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show, :index]

  # GET /courses
  # GET /courses.json
  def index
    if params[:search]
                @courses = Course.where('name LIKE ? OR teacher LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
        else
                @courses = Course.all
        end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)
    @course.ip_create  = current_user.current_sign_in_ip

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: '已成功建立課程評價。' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    @course.ip_update  = current_user.last_sign_in_ip
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: '已成功修改課程評價。' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: '已成功刪除課程評價。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :teacher, :comment, :vote, :semester, :exam, :detail, :category)
    end
end
