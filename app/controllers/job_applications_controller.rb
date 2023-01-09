class JobApplicationsController < ApplicationController
    skip_before_action :authorize, only: [:index]
    def index
        render json: JobApplication.all
    end
end
