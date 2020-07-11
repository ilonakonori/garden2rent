class Garden < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  validates :title, :location, :description, :price, :user_id, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 0 }
  validates :photos, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
