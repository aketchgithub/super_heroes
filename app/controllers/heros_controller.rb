class HerosController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
   def index
    heroes = Hero.all
    render json: heroes.as_json(only: [:id, :name, :super_name])
   end

   def show
    hero = Hero.find(params[:id])
    render json: hero, serializer: HeroSerializer
   end

   private
   def record_not_found
    render json: { error: " Hero not found"}, status: :not_found
   end
end
