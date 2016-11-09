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

  # GET /projects/new
  # Show a form to create a project
  def new
    @project = Project.new
  end

  # POST /projects
  # Creates a project
  def create
    @project = Project.new(name: params[:project][:name],
                           description: params[:project][:description])
    @project.save

    redirect_to project_path(@project.id)
  end
end
