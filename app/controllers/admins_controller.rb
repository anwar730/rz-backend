class AdminsController < ApplicationController
    skip_before_action :authorize, only: [:index,:create,:destroy]
    def index 
        render json: Admin.all
    end
    
    def create
    admin=Admin.create!(admin_params)
    render json:admin , status: :created
    end

    def destroy
        admin = Admin.find(params[:id])
        admin.destroy
        render json: admin, status: :no_content
    end


    private
    def admin_params
        params.permit(:name, :email, :password)
    end

end
