class Reservation < ApplicationRecord
  belongs_to :User
  belongs_to :Motocycle

  validates :user_id, presence: true
  validates :motocycle_id, presence: true
  validates :end_time, comparison: {greater_than: pickup_date}
  validates :start_time, presence: true,
                        date: { on_or_after: :today,
                                message: 'must be today or later' }
  validates :end_time, presence: true,
                        date: { after: :start_time,
                                message: 'must be at least 1 day after start time' }
end
