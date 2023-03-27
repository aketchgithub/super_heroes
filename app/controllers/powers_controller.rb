class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found 

    def index
        powers = Power.all
        render json: powers
    end

    def show
        power = Power.find(params[:id])
        render json: power
    end

    def update
        power = Power.find_by(id: params[:id])
    
        if power
          if power.update(power_params)
            render json: power, status: :ok
          else
            render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
          end
        else
          render json: { error: 'Power not found' }, status: :not_found
        end
    end
   

    private

    def record_not_found
        render json: { error: "Power not found"}, status: :not_found
    end

    def power_params
        params.permit(:description)
    end
    
end
