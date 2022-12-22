class JobsController < ApplicationController
    def index
        render json: Job.all
    end

    def show
        job = job_params
        if job
            render json: job
        else
            render json: { error: "Job not found" }, status: :not_found
        end
    end

    def create
        job = Job.create(render_params)
        render json: job, status: :created
    end

    def update
        job = job_params
        if job 
         job.update(render_params)
         render json: job
        else
         render json: {error:"Job not found"}
        end
     end
 
     def destroy
         job = job_params
         job.destroy
         head :no_content
     end

    private
    def job_params
        Job.find_by(id: params[:id])
    end

    def render_params
        params.permit(:id, :company_name, :category, :job_title, :job_description, :responsibilities, :salary, :status, :no_of_applicants)
    end
end
