class ReservationSerializer < ActiveModel::Serializer 
  belongs_to :motocycle
  attributes :id, :start_time, :end_time
end