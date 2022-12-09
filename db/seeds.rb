# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "destroying all flats, users and bookings"
Flat.destroy_all
User.destroy_all
Booking.destroy_all
p "destroy done"

p "creating in progress"
Flat.create(name: "Flat 1", address: "Address 1", description: "Description 1", price: 100, picture_url: "https://images.unsplash.com/photo-1617680000000-1c1c1c1c1c1c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", longitude: "2.3522", latitude: "48.8566")
Flat.create(name: "Flat 2", address: "Address 2", description: "Description 2", price: 200, picture_url: "https://images.unsplash.com/photo-1617680000000-2c2c2c2c2c2c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", longitude: "2.3522", latitude: "48.8566")
Flat.create(name: "Flat 3", address: "Address 3", description: "Description 3", price: 300, picture_url: "https://images.unsplash.com/photo-1617680000000-3c3c3c3c3c3c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", longitude: "2.3522", latitude: "48.8566")
Flat.create(name: "Flat 4", address: "Address 4", description: "Description 4", price: 400, picture_url: "https://images.unsplash.com/photo-1617680000000-4d4d4d4d4d4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", longitude: "2.3522", latitude: "48.8566")
Flat.create(name: "Flat 5", address: "Address 5", description: "Description 5", price: 500, picture_url: "https://images.unsplash.com/photo-1617680000000-5e5e5e5e5e5e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", longitude: "2.3522", latitude: "48.8566")
Flat.create(name: "Flat 6", address: "Address 6", description: "Description 6", price: 600, picture_url: "https://images.unsplash.com/photo-1617680000000-6f6f6f6f6f6f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", longitude: "2.3522", latitude: "48.8566")
Flat.create(name: "Flat 7", address: "Address 7", description: "Description 7", price: 700, picture_url: "https://images.unsplash.com/photo-1617680000000-7g7g7g7g7g7g?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", longitude: "2.3522", latitude: "48.8566")
Flat.create(name: "Flat 8", address: "Address 8", description: "Description 8", price: 800, picture_url: "https://images.unsplash.com/photo-1617680000000-8h8h8h8h8h8h?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", longitude: "2.3522", latitude: "48.8566")
p "flats ok"

User.create(email: "test@test.com", password: "123456")

p "user ok + flat ok"
