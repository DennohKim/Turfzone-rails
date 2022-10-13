class TurvesController < ApiController

    def index
        turves = Turf.all
        render json: turves, status: :ok
    end

    
end
