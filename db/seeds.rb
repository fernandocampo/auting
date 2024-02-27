# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
fernando = User.create(
  email: 'fernando@example.com',
  user: 'fernando',
  password: '123456',
  password_confirmation: '123456',
  name: 'Fernando',
  last_name: 'Campo',
  age: 33,
  city: 'CABA',
  phone: '12345'
)

antonio = User.create(
  email: 'antonio@example.com',
  user: 'antonio',
  password: 'anto123',
  password_confirmation: 'anto123',
  name: 'antonio',
  last_name: 'edwards',
  age: 31,
  city: 'Santiago Chile',
  phone: '987654321'
)

dario = User.create(
  email: 'dario@example.com',
  user: 'dario',
  password: 'dario123',
  password_confirmation: 'dario123',
  name: 'dario',
  last_name: 'cardoso',
  age: 34,
  city: 'CABA',
  phone: '111222333'
)

# Crear los autos asociados a un usuario
Car.create(brand: 'Honda', model: 'Accord', year: 2020, cost_per_day: 50, user: fernando)
Car.create(brand: 'Toyota', model: 'Hilux', year: 2023, cost_per_day: 70, user: antonio)
Car.create(brand: 'BMW', model: 'M3', year: 2023, cost_per_day: 250, user: dario)
