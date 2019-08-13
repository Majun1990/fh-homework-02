# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
include Faker

type = (fiction, Nonfiction)
classification = (History, Education, Music, Fine Arts, Romance, SciFi, Medicidne, Technology, Military)
50.times do
    Books.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        genre: Faker::Book.genre,
        classification: classification,
        type: type,
        year: Faker::Number.between(from: 1940, to: 2018),
    )
end