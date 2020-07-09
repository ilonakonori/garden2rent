class Booking < ApplicationRecord
  belongs_to :garden
  belongs_to :user
  validates :start_date, :end_date, presence: true

  # added custom method
  validate :start_date_cannot_be_in_the_past, :start_date_cannot_be_greater_than_end_date

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def start_date_cannot_be_greater_than_end_date
    if start_date > end_date
      errors.add(:start_date "can't be greater than end date")
    end
  end
end
