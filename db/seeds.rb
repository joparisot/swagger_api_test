# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Signature.destroy_all
User.destroy_all

jonathan = User.create(email: "parisot.jonathan@gmail.com", password: "123456")
thomas = User.create(email: "thomas@gmail.com", password: "123456")
xavier = User.create(email: "xavier@gmail.com", password: "123456")
signature1 = Signature.create(user: jonathan, content:"this is my cool signature")
signature2 = Signature.create(user: jonathan, content:"this is my old signature")
signature3 = Signature.create(user: thomas, content:"this is my cool signature3")
signature4 = Signature.create(user: thomas, content:"this is my cool signature4")
signature5 = Signature.create(user: xavier, content:"this is my cool signature5")
signature6 = Signature.create(user: xavier, content:"this is my cool signature6")

