class AdminsController < ApplicationController
    skip_before_action :authorize, only: [:index]
    def index 
        render json: Admin.all
    end
end
