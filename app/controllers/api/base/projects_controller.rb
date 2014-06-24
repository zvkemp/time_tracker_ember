class Api::Base::ProjectsController < Api::BaseController
  def index
    respond_with Project.all
  end

  def show
    respond_with Project.find(params[:id])
  end
end
