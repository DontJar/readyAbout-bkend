class BoatsController < ApplicationController
  before_action :find_boat, only: [:update]

  def index
    @boats = Boat.all
    render json: @boats
  end

  def create
      @boat = Boat.create(boat_params)
      if @boat.save
        render json: @boat, status: :accepted
      else
        render json: { errors: @boat.errors.full_messages }, status: :unprocessible_entity
      end
    end

  def show
    render json: Boat.find(params[:id]), include: ['logbooks']
  end

  def update
    @boat.update(user_params)
    if @boat.save
      render json: @boat, status: :accepted
    else
      render json: { errors: @boat.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    render json: Boat.find(params[:id]).destroy
  end

  private

  def user_params
    params.permit(:name, :length, :home_port, :user_id)
  end

  def find_boat
    @boat = Boat.find(params[:id])
  end

end
