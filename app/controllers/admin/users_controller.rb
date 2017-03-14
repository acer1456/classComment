class Admin::UsersController < AdminController
  before_action :set_admin_user, only: [:show, :edit, :update, :destroy]

  def index
     if params[:search]
                 @users = User.where('name LIKE ? OR email LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
         else
                 @users = User.all
         end
   end

   def show
     respond_to do |format|
      format.html
      format.js
     end
   end

   def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_path, notice: '成功地刪除使用者' }
      format.json { head :no_content }
      format.js
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_admin_user
    @user = User.find(params[:id])
  end

  def admin_user_params
    params.require(:user).permit(:admin)
  end

end
