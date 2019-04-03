# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

Faker::Config.locale = 'es'

format_type = [
  "Betamax",
  "VHS",
  "VHS-C,",
  "8mm",
  "MiniDV",
  "MicroMV"
]

movie_categories = [
  "Absurdist",
  "Action",
  "Adventure",
  "Comedy",
  "Crime",
  "Drama",
  "Fantasy",
  "Historical",
  "Horror",
  "Magical",
  "Mystery",
  "Paranoid Fiction",
  "Philosophical",
  "Political",
  "Romance",
  "Saga",
  "Satire",
  "Science Fiction",
  "Social",
  "Speculative",
  "Thriller",
  "Urban",
  "Western"
]

name_members = []
number_of_members = 10
number_of_members.times { name_members << Faker::Name.unique.name }

name_actors = []
number_of_actors = 50
number_of_actors.times { name_actors << Faker::Name.name }

name_movies = []
number_of_movies = 100
number_of_movies.times { name_movies << Faker::Movie.quote }

number_of_cassettes = number_of_movies * 2

number_of_orders = number_of_cassettes * 2
order_start_dates = []
order_end_dates = []
number_of_orders.times { order_start_dates << Faker::Date.backward(600) }
order_start_dates.each { |start_date| order_end_dates << (start_date + 10) }

name_members.each { |member| Member.create(name: member, phone: Faker::Number.number(9), address: Faker::Address.full_address) }

format_type.each { |type| Formato.create(name: type) }

movie_categories.each { |categorie| Category.create(name: categorie) }

name_actors.each { |actor| Actor.create(name: actor, birth_date: Faker::Date.backward(18250)) }

name_movies.each { |movie| Movie.create(name: movie, category: Category.find_by(id: "#{rand(movie_categories.count) + 1}")) }

number_of_movies.times { Casting.create(actor: Actor.find_by(id: "#{rand(name_actors.count) + 1}"), movie: Movie.find_by(id: "#{rand(name_movies.count) + 1}")) }

number_of_cassettes.times { Cassette.create(movie: Movie.find_by(id: "#{rand(name_movies.count) + 1}"), formato: Formato.find_by(id: "#{rand(format_type.count) + 1}")) }

number_of_orders.times { Order.create(start_date: order_start_dates.sample, end_date: order_end_dates.sample, cassette: Cassette.find_by(id: "#{rand(number_of_cassettes) + 1}"), member: Member.find_by(id: "#{rand(number_of_members) + 1}")) }