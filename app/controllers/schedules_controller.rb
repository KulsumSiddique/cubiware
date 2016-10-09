class SchedulesController < ApplicationController
  def index
    @schedules = scope
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

  def scope
    query = Schedule.for_day(date)
    query.where!(channel_id: channel_id) if channel_id
    query
  end

  def date
    if params.has_key? :date
      Date.parse(params[:date])
    else
      Date.today
    end
  end

  def channel_id
    params[:channel_id]
  end

  def schedule_id
    params.require(:id)
  end
end
