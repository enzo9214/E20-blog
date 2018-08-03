class UsersController < ApplicationController

    def destroy

       @user = User.find(params[:id])
       @user.destroy
    
       if @user.destroy
        redirect_to dashboard_path, notice: "User deleted."
       end
    
    end    


end
