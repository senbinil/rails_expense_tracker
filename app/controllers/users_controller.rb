class UsersController < ApplicationController
    def update
        @user=current_user 
        p params[:user][:monthly_limit]
        if @user.update(monthly_limit:params[:user][:monthly_limit])
            redirect_to users_index_path ,method: :GET
        else
            redirect_to root_path
        end
    end
end
