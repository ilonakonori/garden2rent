class Garden < ApplicationRecord
  #belongs_to :user <-- uncoment once we have users in DB
  validates :title, :location, :description, :price, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 0 }
  # add here photos
end
