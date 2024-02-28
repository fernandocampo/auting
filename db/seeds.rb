require 'faker'

fernando = User.create(
  email: 'fernando@example.com',
  user: 'fernando',
  password: '123456',
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
  name: 'Antonio',
  last_name: 'Edwards',
  age: 31,
  city: 'Santiago Chile',
  phone: '987654321'
 )

dario = User.create(
  email: 'dario@prueba.com',
  user: 'dario',
  password: '123456',
  name: 'Dario',
  last_name: 'Cardoso',
  age: 34,
  city: 'CABA',
  phone: '111222333'
)

# Crear los autos asociados a un usuario
Car.create(brand: 'Honda', model: 'Accord', year: 2020, cost_per_day: 50, user_id: 1)
Car.create(brand: 'Toyota', model: 'Hilux', year: 2023, cost_per_day: 70, user_id: 2)
Car.create(brand: 'BMW', model: 'M3', year: 2023, cost_per_day: 250, user_id: 3)


puts 'Creating 20 fake users...'
20.times do
  user = User.create(
    email: Faker::Internet.email,
    user: Faker::Internet.username,
    password: Faker::Internet.password,
    name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: Faker::Address.city,
    phone: Faker::PhoneNumber.cell_phone,
    age: rand(18..99)
  )
  user.save!
end
puts 'Finished!'

puts 'Creating 50 fake cars...'
50.times do
  user = Car.create(
    brand: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    cost_per_day: rand(30..250),
    user_id: rand(1..20)
  )
  user.save!
end
puts 'Finished!'
