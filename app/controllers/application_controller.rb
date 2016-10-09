class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ArgumentError, with: :unprocessable_entity

  private

  def record_not_found
    head :not_found
  end

  def unprocessable_entity
    head :unprocessable_entity
  end
end
