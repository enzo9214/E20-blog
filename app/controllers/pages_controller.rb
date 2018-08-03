class PagesController < ApplicationController

    def index
        @users = User.all
    end

    def update
        @user = User.find(params[:id])
        respond_to do |format|
            if @user.update(:role => )
              format.html { redirect_to dashboard_path, notice: 'User was successfully updated.' }
              format.json { render :show, status: :ok, location: @post }
            else
              format.html { render :edit }
              format.json { render json: @post.errors, status: :unprocessable_entity }
            end
          end
    end    

end
