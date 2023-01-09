class EmployersController < ApplicationController
    skip_before_action :authorize, only: [:index]
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
    def create
        employer = Employer.create!(emp_params)
        # session[:user_id] = jobseeker.id
        render json: employer, status: :created
      end

    private
    def employer_params
        Employer.find_by(id: params[:id])
    end

    def emp_params
        params.permit(:username, :email, :password, :role, :admin_id, :company_name)
    end
end
