class Booking < ApplicationRecord
  belongs_to :garden
  belongs_to :user
  has_one :review, dependent: :destroy
  validates :start_date, presence: true
  validates :end_date, presence: true

  # added custom methods
  validate :start_date_cannot_be_in_the_past
  validate :start_date_cannot_be_greater_than_end_date

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.tomorrow
      errors.add(:start_date, "can't be in the past")
    end
  end

  def start_date_cannot_be_greater_than_end_date
    if start_date.present? && end_date.present? && start_date >= end_date
      errors.add(:start_date, "can't be greater than end date")
    end
  end

  def total_price
    garden = Garden.find(garden_id)
    (end_date - start_date).to_i * garden.price
  end
end
