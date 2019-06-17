class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render json: @animals, status: :ok
  end

  ## Example: Get a user and their animals
  ## def show (in a users controller)
  ##   @user = User.find(params[:id])
  ##   render json: @user.profile_json, status: :ok
  ## end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      render json: @animal, status: :created
    else
      render json: @animal.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def animal_params
    params.permit(:name, :image, :species)
  end
end
