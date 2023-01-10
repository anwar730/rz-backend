class JobseekersController < ApplicationController
    skip_before_action :authorize, only: [:create,:index,:show,:destroy]
    
    def index
        render json: Jobseeker.all
    end
    
    def create
      jobseeker = Jobseeker.create!(user_params)
      session[:user_id] = jobseeker.id
      render json: jobseeker, status: :created
    end
  
    def show
      render json: @current_user
    end

    def update
      if @current_user
      @current_user.update!(update_params)
      render json: @current_user, status: :accepted
      end
    end

    def destroy
      user = Jobseeker.find(params[:id])
      user.destroy
      render json: user, status: :no_content
    end
  
    private
  
    def user_params
      params.permit(:username, :email, :password, :role, :admin_id, :jobs_done, :skills, :rating, :isloggedin)
    end

    def update_params
      params.permit(:username, :email)
    end
end
