class Flat < ApplicationRecord
  # association avec booking, user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  # adapte flat pour indiquer à la gem geocoder de recevoir une adresse
  geocoded_by :address

  # apres validation si l'adresse change il faut updater les coordonnées
  after_validation :geocode, if: :will_save_change_to_address?
end
