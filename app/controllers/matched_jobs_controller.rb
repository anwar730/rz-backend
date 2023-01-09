class MatchedJobsController < ApplicationController
    skip_before_action :authorize, only: [:index]
    
    def index
        render json: MatchedJob.all
    end

    def show
        render json: MatchedJob.find(params[:id])
    end
end
