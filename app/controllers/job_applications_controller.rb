class JobApplicationsController < ApplicationController
    def index
        render json: JobApplication.all
    end
end
