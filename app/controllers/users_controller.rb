class UsersController < ApplicationController
    def update
        @user=current_user 
        p params[:user][:daily_limit]
        if @user.update(daily_limit:params[:user][:daily_limit])
            redirect_to users_index_path ,method: :GET
        else
            redirect_to root_path
        end
    end
end
