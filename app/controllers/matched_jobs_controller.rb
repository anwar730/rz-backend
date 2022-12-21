class MatchedJobsController < ApplicationController
    def index
        render json: MatchedJob.all
    end

    def show
        render json: MatchedJob.find(params[:id])
    end
end
