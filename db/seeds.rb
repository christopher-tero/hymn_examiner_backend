# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hymn.create(title: "The Solid Rock", description: "This song shows how Jesus Christ is our Solid Rock to lean upon, no matter what storms life throws our way", story: "Upcoming", editorRating: 5, editorReview: "One of the greatest hymns ever written", doctrine: 3, scriptural: 5)

Resource.create(name: "Some hymn history book", url: "none yet, affiliate link incoming", description: "Some great book workth buying", price: "Some low price")
