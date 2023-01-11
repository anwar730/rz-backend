class JobApplicationsController < ApplicationController
    skip_before_action :authorize, only: [:index,:create,:destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: JobApplication.all
    end
    def show 
        job_application=JobApplication.find_by(id:params[:id])
        render json: job_application
    end

    def create
        job_application = JobApplication.create!(ja_params)
        render json: job_application, status: :created
    end

    def update
        job_application=JobApplication.find_by(id: params[:id])
        job_application.update!(ja_params)
        render json: job_application, status: :accepted
    end

    def destroy
        ja = JobApplication.find(params[:id])
        ja.destroy
        render json: ja, status: :no_content
    end

    private


   def ja_params
    params.permit(:jobseeker_id,:job_id,:employer_id)
   end
   def render_not_found_response
    render json: {error: "Job Application not found"}, status: :not_found
end

end
