class SessionsController < ApplicationController
    def create
        jobseeker = Jobseeker.find_by(username: params[:username])
        if jobseeker&.authenticate(params[:password])
          session[:jobseeker_id] = jobseeker.id
          render json: jobseeker
        else
          render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end
  
    def destroy
        return render json: {errors: ["Invalid username or password"]}, status: :unauthorized unless session.include? :jobseeker_id
        session.delete :user_id
        head :no_content
    end
end
