class JobApplicationsController < ApplicationController
    skip_before_action :authorize, only: [:index]
    def index
        render json: JobApplication.all
    end
    def create
        job_application = JobApplication.create!(ja_params)
        render json: job_application, status: :created
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
end
