class MatchedJobsController < ApplicationController
    skip_before_action :authorize, only: [:index]
    
    def index
        render json: MatchedJob.all
    end

    def show
        render json: MatchedJob.find(params[:id])
    end
    def create
        matchedJOb = MatchedJob.create!(mj_params)
        render json: matchedJOb, status: :created
    end
    def destroy
        mj = MatchedJob.find(params[:id])
        mj.destroy
        render json: mj, status: :no_content
    end

    private
    def mj_params
        params.permit(:employer_id,:job_id,:jobseeker_id)
    end
end
