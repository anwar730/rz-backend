class JobsController < ApplicationController
    skip_before_action :authorize, only: [:index,:show, :create]
    
    def index
        render json: Job.all
    end

    def show
        job = job_params
        if job
            render json: job
        else
            render json: { error: "Job not found" }, status: 404
        end
    end
    
    def create
        job = Job.create!(j_params)
        render json: job, status: :created
     end
     
    def destroy
        job = Job.find(params[:id])
        job.destroy
        render json: job, status: :no_content
    end
        

    private
    def job_params
        Job.find_by(id: params[:id])
    end
    def j_params
        params.permit(:company_name,:job_description,:job_title,:category,:responsibilities,:number_of_applicants,:employer_id,:salary)
    end
end
