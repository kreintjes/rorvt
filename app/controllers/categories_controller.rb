class CategoriesController < ApplicationController
  before_action :load_resource

  def index
    respond_with(@categories)
  end

  def show
    respond_with(@category)
  end

  def new
    respond_with(@category)
  end

  def edit
    respond_with(@category)
  end

  def create
    @category.update(resource_params)
    respond_with(@category)
  end

  def update
    @category.update(resource_params)
    respond_with(@category)
  end

  def destroy
    @category.destroy
    respond_with(@category)
  end

private
  def load_resource
    case params[:action]
    when 'index'
      @categories = Category.scoped
    when 'new', 'create'
      @category = Category.new
    else
      @category = Category.find(params[:id])
    end
  end

  def resource_params
    params.require(:category).permit(:name, :parent_id)
  end
end
