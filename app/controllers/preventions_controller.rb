class PreventionsController < ApplicationController
  before_action :load_resource

  def index
    respond_with(@preventions)
  end

  def show
    respond_with(@prevention)
  end

  def new
    respond_with(@prevention)
  end

  def edit
    respond_with(@prevention)
  end

  def create
    @prevention.update(resource_params)
    respond_with(@prevention)
  end

  def update
    @prevention.update(resource_params)
    respond_with(@prevention)
  end

  def destroy
    @prevention.destroy
    respond_with(@prevention)
  end

private
  def load_resource
    case params[:action]
    when 'index'
      @preventions = Prevention.scoped
    when 'new', 'create'
      @prevention = Prevention.new
    else
      @prevention = Prevention.find(params[:id])
    end
  end

  def resource_params
    params.require(:prevention).permit(:name)
  end
end
