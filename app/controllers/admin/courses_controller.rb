class Admin::CoursesController < AdminController
  before_action :set_admin_course, only: [:show, :edit, :update, :destroy]


  def index
    #  if params[:search]
    #              @courses = Course.where('name LIKE ? OR teacher LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
    #      else
                 @courses = Course.order('created_at DESC')
        #  end
   end

   def show
     respond_to do |format|
      format.html
      format.js
     end
   end

   def edit
   end

   def update
     respond_to do |format|
      if @course.update(admin_course_params)
        format.html { redirect_to admin_courses_path, notice: '已成功修改課程評價。' }
        format.json { head :no_content }
        format.js
      else
        format.html { render :edit }
        format.xml  { render :xml => @course.errors, :status => :unprocessable_entity }
      end
    end
   end

   def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to admin_courses_path, notice: '成功地刪除課程心得' }
      format.json { head :no_content }
      format.js
    end
  end

   private

   # Use callbacks to share common setup or constraints between actions.
   def set_admin_course
     @course = Course.find(params[:id])
   end

   def admin_course_params
     params.require(:course).permit(:name, :teacher, :comment, :vote, :semester, :exam, :detail, :category)
   end

end
