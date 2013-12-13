class VersionsController < ApplicationController
  before_action :load_resource

  def index
    respond_with(@versions)
  end

  def show
    respond_with(@version)
  end

  def new
    respond_with(@version)
  end

  def edit
    respond_with(@version)
  end

  def create
    @version.update(resource_params)
    respond_with(@version)
  end

  def update
    @version.update(resource_params)
    respond_with(@version)
  end

  def destroy
    @version.destroy
    respond_with(@version)
  end

private
  def load_resource
    case params[:action]
    when 'index'
      @versions = Version.scoped
    when 'new', 'create'
      @version = Version.new
    else
      @version = Version.find(params[:id])
    end
  end

  def resource_params
    params.require(:version).permit(:name, :release_date, :parent_id)
  end
end
