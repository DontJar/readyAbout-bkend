class LogbooksController < ApplicationController
  before_action :find_logbook, only: [:update]

  def index
    @logbooks = Logbook.all
    render json: @logbooks
  end

  def create
      @logbook = Logbook.create(logbook_params)
      if @logbook.save
        render json: @logbook, status: :accepted
      else
        render json: { errors: @logbook.errors.full_messages }, status: :unprocessible_entity
      end
    end

  def show
    render json: Logbook.find(params[:id]), include: ['logs']
  end

  def update
    @logbook.update(user_params)
    if @logbook.save
      render json: @logbook, status: :accepted
    else
      render json: { errors: @logbook.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    render json: Logbook.find(params[:id]).destroy
  end

  private

  def user_params
    params.permit(:date_began, :boat_id)
  end

  def find_boat
    @logbook = Logbook.find(params[:id])
  end

end
