require 'faker'
requiere "open uri"

#prueba 2

puts 'Creating 3 usuarios personales'
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
  email: 'dario@example.com',
  user: 'Dario',
  password: '123456',
  name: 'Dario',
  last_name: 'Cardoso',
  age: 34,
  city: 'CABA',
  phone: '111222333'
)

file1 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_08a00960dbe94502bd9bcbf334239f09.jpg")
file2 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_76d965771eed4e10b9ff79ee5e427082.jpg")
file3 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_a4952ec54f3e4e09a1ad39b10550d214.jpg")
file4 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_cbed2e2e428d40818e613c19bb49bb71.jpg")
file5 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_6d69c894ec5949c193629791752f8bdf.jpg")
file6 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_12aa5deef3794cc4ad0dfcd88426ef17.jpg")
file7 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_3b324cb695a947bbbe967883917456dc.jpg")
file8 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_331e021e61354e769067bb21f2626685.jpg")
file9 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_05a99b23df054e0eb2c93b3885eaa13e.jpg")
file10 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_a180957b61e64c229e6c65db033307a7.jpg")
file11 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_b87005cb6e834d03bf2bb24213d13450.jpg")
file12 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_4edfe20ce9b24a60bdf4f7c9ef944b8c.jpg")
file13 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_2db342aa219449379a6392adbbf9d5f0.jpg")
file14 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_5d052c2a755a4a6fa9fa527573995979.jpg")
file15 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_691301e355b144ab9108dc446f0a4ba1.jpg")
file16 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_721f028cbb0a4d14b8d944385d511797.jpg")
file17 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_65e56ea3961347348a4fe469e9471793.jpg")
file18 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_f42f2af1ce37480b829cd60208f9f4a5.jpg")
file19 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_0d008ceaa2eb419883ad5c2f1eea7838.jpg")
file20 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_88e0f670ce6746d1ba0c16a1d77e0628.jpg")
file21 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_676fb01dce3541f3ab06de031b4777ab.jpg")
file22 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_1e3679ee3771407880d1072f8d162fd7.jpg")
file23 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_355ce8f418a347de85a7f52fb024c08f.jpg")
file24 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_c847b50563064a8abf94c9b7143d8f7b.jpg")
file25 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_2abcf17dcdc94ff1a86173be1522f430.jpg")
file26 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/m/RT_V_13a028d0467e4ca78d0102ea504c7741.jpg")

# Crear los autos asociados a un usuario para probar nomas
car1 = Car.create(brand: 'Honda', model: 'Accord', year: 2020, cost_per_day: 50, user_id: 1)
car1.photo.attach(io: file1, filename: "1.png", content_type: "image/jpg")
car1.save!

car2 = Car.create(brand: 'Toyota', model: 'Hilux', year: 2023, cost_per_day: 70, user_id: 2)
car2.photo.attach(io: file2, filename: "2.png", content_type: "image/jpg")
car2.save!

car3 = Car.create(brand: 'BMW', model: 'M3', year: 2023, cost_per_day: 250, user_id: 3)
car3.photo.attach(io: file3, filename: "3.png", content_type: "image/jpg")
car3.save!

car4 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car4.photo.attach(io: file4, filename: "4.png", content_type: "image/jpg")
car4.save!

car5 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car5.photo.attach(io: file5, filename: "5.png", content_type: "image/jpg")
car5.save!

car6 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car6.photo.attach(io: file6, filename: "6.png", content_type: "image/jpg")
car6.save!

car7 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car7.photo.attach(io: file7, filename: "7.png", content_type: "image/jpg")
car7.save!
car8 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car8.photo.attach(io: file8, filename: "8.png", content_type: "image/jpg")
car8.save!
car9 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car9.photo.attach(io: file9, filename: "9.png", content_type: "image/jpg")
car9.save!
car10 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car10.photo.attach(io: file10, filename: "10.png", content_type: "image/jpg")
car10.save!
car11 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car11.photo.attach(io: file11, filename: "11.png", content_type: "image/jpg")
car11.save!
car12 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car12.photo.attach(io: file12, filename: "12.png", content_type: "image/jpg")
car12.save!
car13 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car13.photo.attach(io: file13, filename: "13.png", content_type: "image/jpg")
car13.save!
car14 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car14.photo.attach(io: file14, filename: "14.png", content_type: "image/jpg")
car14.save!
car15 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car15.photo.attach(io: file15, filename: "15.png", content_type: "image/jpg")
car15.save!

car16 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car16.photo.attach(io: file16, filename: "16.png", content_type: "image/jpg")
car16.save!
car17 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car17.photo.attach(io: file17, filename: "17.png", content_type: "image/jpg")
car17.save!
car18 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car18.photo.attach(io: file18, filename: "18.png", content_type: "image/jpg")
car18.save!
car19 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car19.photo.attach(io: file19, filename: "19.png", content_type: "image/jpg")
car19.save!
car20 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car20.photo.attach(io: file20, filename: "20.png", content_type: "image/jpg")
car20.save!
car21 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car21.photo.attach(io: file21, filename: "21.png", content_type: "image/jpg")
car21.save!
car22 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car22.photo.attach(io: file22, filename: "22.png", content_type: "image/jpg")
car22.save!
car23 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car23.photo.attach(io: file23, filename: "23.png", content_type: "image/jpg")
car23.save!
car24 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car24.photo.attach(io: file24, filename: "24.png", content_type: "image/jpg")
car24.save!
car25 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car25.photo.attach(io: file25, filename: "25.png", content_type: "image/jpg")
car25.save!
car26 = Car.create(
  brand: Faker::Vehicle.make,
  model: Faker::Vehicle.model,
  year: Faker::Vehicle.year,
  cost_per_day: rand(30..250),
  user_id: rand(1..3)
)
car26.photo.attach(io: file26, filename: "26.png", content_type: "image/jpg")
car26.save!
