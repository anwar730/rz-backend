class EmployersController < ApplicationController
    skip_before_action :authorize, only: [:index, :update,:create, :destroy, :show]
    def index
        render json: Employer.all
    end

    def show
        employer=Employer.find_by(id: params[ :id])
        render json: employer
    end

    def update
        employer=Employer.find_by(id: params[:id])
        employer.update!(emp_params)
        render json: employer, status: :accepted
        
    end

    def create
        employer = Employer.create!(emp_params)
        render json: employer, status: :created
    end
    def destroy
        employer = Employer.find_by(id: params[:id])
        employer.destroy
        render json: employer, status: :no_content
    end

    private
    # def employer_params
    #     Employer.find_by(id: params[:id])
    # end

    def emp_params
        params.permit(:username, :email, :password, :role, :admin_id, :company_name)
    end


end
