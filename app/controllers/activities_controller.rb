class ActivitiesController < ApplicationController

before_action :authenticate_user!
 def index
  @activities=Activity.list
  @proceso= Activity.proceso || Activity.new

 end

 def new
  @activity= Activity.new
 end

 def create
   @activity= Activity.create(parametros)
   @activity.started_at= Time.new
   @activity.save
   redirect_to activities_path
 end

 def update
    @activity= Activity.update(params[:id],parametros)
    @activity.ended_at= Time.new
    @activity.total= (@activity.ended_at-@activity.started_at).to_i
    @activity.save
    redirect_to activities_path

 end

 private

 def parametros
   params.require(:activity).permit(:descripcion, :Project_id)
 end
end
