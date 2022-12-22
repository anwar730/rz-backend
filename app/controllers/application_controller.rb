class ApplicationController < ActionController::Base
    include ActionController::Cookies

    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
  
    # before_action :authorize
  
    private
  
    # def authorize
    #   render json: {errors: ["Not authorized", "Kindly Log in"]}, status: :unauthorized unless session.include? :jobseeker_id
    # end
  
    def record_invalid(invalid)
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end
end
