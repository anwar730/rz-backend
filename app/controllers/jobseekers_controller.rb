class JobseekersController < ApplicationController
    def index
        jobseekers=Jobseeker.all
        render json: jobseekers
    end

    def show
        jobseeker = jobseeker_params
        if jobseeker
            render json: jobseeker
        else
            render json: {error: "Jobseeker not found"}, status: :not_found
        end
    end

    private
    def jobseeker_params
        Jobseeker.find_by(id: params[:id])
    end
end
