class Api::V1::ReservationsController < ApplicationController
    before_action :authenticate_api_v1_user!

    def index 
      render json: current_api_v1_user.reservations.includes([:motorcycle]).order(id: :desc), status: :ok 
    end

    def create 
      reservation = Reservation.new(reservation_params)
      if reservation.save! 
        render json: {
            status: 201,
            message: 'Motorcycle has been successfully reserved',
            data: ReservationSerializer.new(reservation)
        }, status: :created 
        else 
            render json: { error: booking.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
     reservation = Reservation.find(params[:id]) 
     if reservation.destroy
        render json: {
            status: 200,
            message: 'Reservation successfully canceled',
            data: ReservationSerializer.new(reservation)
        }, status: :ok
        else 
            render json: { error: 'ERROR, Not able to cancel the reservation'}, status: :unprocessable_entity
        end

    end

    private 

    def reservation_params
        params.require(:reservation).permit(:start_time, :end_time, :motocycle_id).with_defaults(user_id: current_api_v1_user.id)
    end
end