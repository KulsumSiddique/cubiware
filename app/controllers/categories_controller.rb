class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    respond_to do |format|
      format.json { render json: @categories }
    end
  end

  def show
    @category = Category.find(category_id)
    respond_to do |format|
      format.json { render json: @category }
    end
  end

  private

  def category_id
    params.require(:id)
  end
end
