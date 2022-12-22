class MatchedJobsController < ApplicationController
    def index
        render json: MatchedJob.all
    end

    def show
        matchedjob = matchedjob_params
        if matchedjob
            render json: matchedjob
        else
            render json: {error: 'Job not found'}, status: :not_found
        end
    end

    def create
        matchedjob = MatchedJob.create(render_params)
        render json: matchedjob, status: :created
    end

    def update
        matchedjob = matchedjob_params
        if matchedjob 
         matchedjob.update(render_params)
         render json: matchedjob
        else
         render json: {error:"Job not found"}
        end
     end

    private
    def matchedjob_params
        MatchedJob.find_by(id: params[:id])
    end

    def render_params
        params.permit(:id, :jobseeker, :job_title, :company_name)
    end
end
