class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    # byebug
  end

  def about
  end

end
