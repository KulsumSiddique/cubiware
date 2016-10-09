class SchedulesController < ApplicationController
  def index
    @schedules = load_schedules
    respond_to do |format|
      format.json { render json: @schedules }
    end
  end

  def show
    @schedule = Schedule.find(schedule_id)
    respond_to do |format|
      format.json { render json: @schedule }
    end
  end

  private

  def load_schedules
    SchedulesRetriever.new(channel_id: channel_id, date: date).retrieve
  end

  def date
    Date.parse(params[:date]) if params.has_key? :date
  end

  def channel_id
    params[:channel_id]
  end

  def schedule_id
    params.require(:id)
  end
end
