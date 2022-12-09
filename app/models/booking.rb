class Booking < ApplicationRecord
  # association avec flat, user
  belongs_to :flat
  belongs_to :user
end
