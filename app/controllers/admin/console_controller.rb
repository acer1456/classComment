class Admin::ConsoleController < AdminController

    def index
        @courses = Course.all
        @users = User.all
    end

end
