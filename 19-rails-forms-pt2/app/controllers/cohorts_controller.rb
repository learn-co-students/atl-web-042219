class CohortsController < ApplicationController

  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new(name: params[:name])
    if @cohort.save
      redirect_to cohorts_path
    else
      render :new
    end
  end

  def index
    @cohorts = Cohort.all
  end

end