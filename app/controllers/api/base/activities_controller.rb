class Api::Base::ActivitiesController < Api::BaseController
  def index
    respond_with all_activities
  end

  def show
    respond_with Activity.find(params[:id])
  end

  private

  def all_activities
    if project_id = params[:project_id]
      Activity.where(project_id: project_id)
    else
      Activity.all
    end
  end
end
