class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    Activity.create(activity_params)
    redirect_to root_path
  end

  private

  def activity_params
    params.require(:activity).permit(:amount, :date, :note)
  end
end
