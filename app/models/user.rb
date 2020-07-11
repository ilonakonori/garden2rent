class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :gardens, dependent: :destroy
  has_many :bookings
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }, format: { with: /\A[a-zA-Z]+\z/ }
end
