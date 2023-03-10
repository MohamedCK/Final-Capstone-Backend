class Motocycle < ApplicationRecord
  has_many :reservation, dependent: :destroy

  validates :name, presence: true, length: { in: 1..250 }
  validates :model, presence: true, length: { in: 1..250 }
  validates :image, presence: true, length: { minimum: 1 }, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :description, presence: true, length: { in: 10..300 }
end
