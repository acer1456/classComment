class Admin::ConsoleController < AdminController

    def index
        @courses = Course.order("created_at DESC")
        @users = User.order("created_at DESC")

        @fivestar = Course.where(vote: "5")
        @onestar = Course.where(vote: "1")
    end

end
