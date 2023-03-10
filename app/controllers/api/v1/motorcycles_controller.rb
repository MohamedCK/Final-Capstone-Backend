class Api::V1::MotorcyclesController < ApplicationController
  before_action :set_motorcycle, only: [:show, :update, :availability]
  before_action :authenticate_user!, only: [:create, :update, :availability, :all_motorcycles]

  def index
    @motorcycles = Motorcycle.where(available: true)
    render json: @motorcycles, status: :ok
  end

  def show
    render json: @motorcycle, status: :ok
  end

  def create
    if current_user.admin_role?
      motorcycle = Motorcycle.new(motorcycle_params)
      if motorcycle.save
        render json: {
          status: 201,
          message: 'Motorcycle has been successfully created',
          data: MotorcycleSerializer.new(motorcycle)
        }, status: :created
      else
        render json: { error: 'ERROR: Unable to create the Motorcycle' }, status: :unprocessable_entity
      end
    else
      render json: { errors: 'You are not authorized to create a Motorcycle.' }, status: :unauthorized
    end
  end

  def update
    if current_user.admin_role?
      if @motorcycle.update(motorcycle_params)
        render json: {
          status: 200,
          message: 'Motorcycle has been successfully updated.',
          data: MotorcycleSerializer.new(@motorcycle)
        }, status: :ok
      else
        render json: { error: 'ERROR: Unable to update the Motorcycle' }, status: :unprocessable_entity
      end
    else
      render json: { errors: 'You are not authorized to update this Motorcycle.' }, status: :unauthorized
    end
  end

  def all_motorcycles
    if current_user.admin_role?
      @motorcycles = Motorcycle.all
      render json: @motorcycles, status: :ok
    else
      render json: { errors: 'You are not authorized to view all motorcycles.' }, status: :unauthorized
    end
  end

  def availability
    if current_user.admin_role?
      if @motorcycle.update(motorcycle_availability_params)
        render motorcyle_available? ? render_available : render_unavailable
      else
        render json: { error: 'ERROR: Unable to update the Motorcycle' }, status: :unprocessable_entity
      end
    else
      render json: { errors: 'You are not authorized to update this Motorcycle.' }, status: :unauthorized
    end
  end

  private

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:id])
  end

  def motorcycle_params
    params.require(:motorcycle)
          .permit(:name, :model, :image, :daily_price, :description, :available)
  end

  def motorcyle_available?
    @motorcycle.available
  end

  def motorcycle_availability_params
    params.require(:motorcycle)
          .permit(:available)
  end

  def render_available
    {
      status: 200,
      message: 'Motorcycle has been successfully marked as available.',
      data: MotorcycleSerializer.new(@motorcycle)
    }
  end

  def render_unavailable
    {
      status: 200,
      message: 'Motorcycle has been successfully marked as unavailable.',
      data: MotorcycleSerializer.new(@motorcycle)
    }
  end
end
