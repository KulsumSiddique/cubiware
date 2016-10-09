class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
    respond_to do |format|
      format.json { render json: @channels }
    end
  end

  def show
    @channel = Channel.find(channel_id)
    respond_to do |format|
      format.json { render json: @channel }
    end
  end

  private

  def channel_id
    params.require(:id)
  end
end
