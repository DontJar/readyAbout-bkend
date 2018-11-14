class TripsController < ApplicationController
  before_action :find_trip, only: [:update]

  def index
    @trips = Trip.all
    render json: @trips
  end

  def create
      @trip = Trip.create(trip_params)
      if @boat.save
        render json: @trip, status: :accepted
      else
        render json: { errors: @trip.errors.full_messages }, status: :unprocessible_entity
      end
    end

  def show
    render json: Trip.find(params[:id])
  end

  def update
    @trip.update(user_params)
    if @trip.save
      render json: @trip, status: :accepted
    else
      render json: { errors: @trip.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    render json: Trip.find(params[:id]).destroy
  end

  private

  def user_params
    params.permit(:start_date, :start_point, :destination, :user_id)
  end

  def find_boat
    @trip = Trip.find(params[:id])
  end
end
