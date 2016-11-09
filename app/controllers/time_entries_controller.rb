class TimeEntriesController < ApplicationController
  def index
    @project = Project.find params[:project_id]
    @time_entries = @project.time_entries
  end
end
