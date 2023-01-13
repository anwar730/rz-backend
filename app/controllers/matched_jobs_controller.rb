class MatchedJobsController < ApplicationController
    skip_before_action :authorize, only: [:index,:show,:create,:destroy, :update]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
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

    def update
        mj=MatchedJob.find_by(id: params[:id])
        mj.update!(mj_params)
        render json: mj, status: :accepted
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
    def render_not_found_response
        render json: {error: "Matched Job not found"}, status: :not_found
    end

end
