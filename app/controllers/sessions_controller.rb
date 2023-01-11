class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:create,:destroy]
    def create

       if 
        jobseeker = Jobseeker.find_by(username: params[:username])
        if jobseeker&.authenticate(params[:password])
          session[:user_id] = jobseeker.id
          render json: jobseeker
        else
          render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
       elsif 
        employer = Employer.find_by(username: params[:username])
        if employer&.authenticate(params[:password])
          session[:user_id] = employer.id
          render json: employer
        else
          render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
       else
         admin = Admin.find_by(name: params[:name])
        if admin&.authenticate(params[:password])
          session[:user_id] = admin.id
          render json: admin
        else
          render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
        
       end
      

    end
  
    def destroy
        session.delete :user_id
        head :no_content
    end
end
