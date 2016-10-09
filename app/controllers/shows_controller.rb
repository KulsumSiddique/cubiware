class ShowsController < ApplicationController
  def index
    @shows = Show.all
    respond_to do |format|
      format.json { render json: @shows }
    end
  end

  def show
    @show = Show.find(show_id)
    respond_to do |format|
      format.json { render json: @show }
    end
  end

  private

  def show_id
    params.require(:id)
  end
end
