class JobsController < ApplicationController
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

    private
    def job_params
        Job.find_by(id: params[:id])
    end
end
