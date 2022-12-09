class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :flats, through: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # association avec booking, flat

end
