class Booking < ApplicationRecord
  belongs_to :garden
  belongs_to :user
  validates :start_date, :end_date, presence: true

  # added custom method
  validate :start_date_cannot_be_in_the_past, :start_date_cannot_be_greater_than_end_date

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Time.now
      errors.add(:start_date, "can't be in the past")
    end
  end

  def start_date_cannot_be_greater_than_end_date
    if start_date > end_date
      errors.add(:start_date, "can't be greater than end date")
    end
  end

  def total
    days = (end_date - start_date)*(60*60*24*1000*1000)
    days.floor * price
  end
end
