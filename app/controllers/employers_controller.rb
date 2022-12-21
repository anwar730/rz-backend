class EmployersController < ApplicationController
    def index
        render json: Employer.all
    end

    def show
        employer = employer_params
        if employer
            render json: employer
        else
            render json: {error: "Employer not found"}, status: :not_found
        end
    end

    private
    def employer_params
        Employer.find_by(id: params[:id])
    end
end
