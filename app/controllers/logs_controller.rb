class LogsController < ApplicationController
  before_action :find_log, only: [:update]

  def index
    @logs = Log.all
    render json: @logs
  end

  def create
      @log = Log.create(project_params)
      if @log.save
        render json: @log, status: :accepted
      else
        render json: { errors: @log.errors.full_messages }, status: :unprocessible_entity
      end
    end

  def show
    render json: Log.find(params[:id])
  end

  def update
    @log.update(user_params)
    if @log.save
      render json: @log, status: :accepted
    else
      render json: { errors: @log.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    render json: Log.find(params[:id]).destroy
  end

  private

  def user_params
    params.permit(:entry_date, :noon_location, :narrative, :weather, :fuel_consumed, :logbook_id, :trip_id)
  end

  def find_boat
    @log = Log.find(params[:id])
  end

end
