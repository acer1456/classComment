class Admin::ConsoleController < AdminController

    def index
        @courses = Course.order("created_at DESC")
        @users = User.order("created_at DESC")
    end

end
