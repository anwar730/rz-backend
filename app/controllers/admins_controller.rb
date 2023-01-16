class AdminsController < ApplicationController
    
    skip_before_action :authorize, only: [:index,:create,:destroy,:update,:show]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
    def index 
        render json: Admin.all
    end
    

    def create
        admin = Admin.create!(admin_params)
        session[:user_id] = admin.id
        render json: admin, status: :created
    end

    # def show 
    #     admin=Admin.find_by(id:params[:id])
    #     render json: admin
    # end
    def show
        render json: @current_user
    end

    def update
        admin=Admin.find_by(id: params[:id])
        admin.update!(admin_params)
        render json: admin, status: :accepted
    end


    def destroy
        admin = Admin.find(params[:id])
        admin.destroy
        render json: admin, status: :no_content
    end


    private
    def render_not_found_response
        render json: {error: "Admin not found"}, status: :not_found
    end
    def admin_params
        params.permit(:name, :email, :password)
    end

 

end
