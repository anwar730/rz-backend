class JobseekersController < ApplicationController
    
    def index
        render json: Jobseeker.all
    end

    def create 
        jobseeker = Jobseeker.create(jobseeker_params)
        if jobseeker.valid?
            session[:jobseeker_id] = jobseeker.id
            render json: jobseeker, status: :created
        else
            render json: {errors: jobseeker.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def show
        jobseeker = Jobseeker.find_by(id: session[:jobseeker_id])
        if jobseeker
            render json: jobseeker
        else
            render json: {error: "Jobseeker not found"}, status: :not_found
        end
    end

    private
    def jobseeker_params
        params.permit(:username, :password, :password_confirmation)
    end
end
