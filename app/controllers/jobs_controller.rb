class JobsController < ApplicationController
    skip_before_action :authorize, only: [:index,:create,:destroy,:update,:show]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
    def index
        render json: Job.all
    end

    def show
        job = job_params
        render json: job
    end

    def update
        job=Job.find_by(id: params[:id])
        job.update!(j_params)
        render json: job, status: :accepted
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
    def render_not_found_response
        render json: {error: "Job not found"}, status: :not_found
    end

end
