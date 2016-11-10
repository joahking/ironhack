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
    @errors = []
  end

  # POST /projects
  # Creates a project
  def create
    @project = Project.new project_params

    if @project.save
      redirect_to project_path(@project.id)
    else
      @errors = @project.errors.full_messages
      render 'new'
    end
  end

  # GET /projects/:id/edit
  # Show a form to edit a project
  def edit
    @project = Project.find params[:id]
    @errors = []

    render 'new'
  end

  # PATCH /projects/:id
  # Updates a project
  def update
    @project = Project.find params[:id]

    if @project.update project_params
      redirect_to project_path(@project.id)
    else
      @errors = @project.errors.full_messages
      render 'new'
    end
  end

  protected

  # Strong parameters http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  def project_params
    params.require(:project).permit(:name, :description)
  end
end
