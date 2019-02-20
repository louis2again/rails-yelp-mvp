# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '01372-567876',
    category:     'italian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '0202-567876',
    category:     'french'
  },
  {
    name:         'Waggas',
    address:      '10 Boundary St, London E2 7JE',
    phone_number: '01562-567876',
    category:     'chinese'
  },
  {
    name:         'Nandos',
    address:      '80 Shoreditch High St, London E1 6PQ',
    phone_number: '0662-567876',
    category:     'belgian'
  },
  {
    name:         'Wimpy',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '01372-567876',
    category:     'italian'
  },
  {
    name:         'Taken',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '0202-567876',
    category:     'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
