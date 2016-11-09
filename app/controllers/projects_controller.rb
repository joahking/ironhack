class ProjectsController < ApplicationController
  # GET /projects
  # Lists all projects
  def index
    @projects = Project.order(created_at: :desc).limit(10)
  end

  # GET /projects/:id
  # Show details of a project
  def show
    @project = Project.find params[:id]
  end
end
