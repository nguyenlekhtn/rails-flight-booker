# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all
airport_codes = %w[ATL PEK DXB LAX ORD LHR HND HKG PVG CDG AMS DFW CAN FRA IST DEL CGK SIN ICN DEN]
airport_codes.each { |code| Airport.create(code:)}