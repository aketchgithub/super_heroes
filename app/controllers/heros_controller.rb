class HerosController < ApplicationController
   def index
    heroes = Hero.all
    render json: heroes.as_json(only: [:id, :name, :super_name])
   end

   def show
    hero = Hero.find(params[:id])
    render json: hero 
   end
end
