class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
      @projects=Project.calculo
  end

  def new
    @project=Project.new
  end

  def create
    @project= Project.create(parametros)
  end

  def edit
     @project= Project.find(params[:id])
  end

  def update
     @project= Project.update(params[:id],parametros)
  end


  def destroy
     @project=Project.destroy(params[:id])
     redirect_to projects_path
  end

  private

  def parametros

    params.require(:project).permit(:name)
  end
end
