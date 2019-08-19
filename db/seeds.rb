# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
book_type = ["fiction", "Nonfiction"]
classification = [
    "History", 
    "Education",
    "Music", 
    "Fine Arts", 
    "Romance", 
    "SciFi", 
    "Medicine", 
    "Technology", 
    "Military",
    "General Works",
    "Philosophy, Psychology, Religion",
    "General U.S. History",
    "Local U.S. History",
    "Geography, Anthropology, Recreation",
    "Political Science",
    "Law Z",
    "Language and Literature",
    "Science",
    "Naval Science",
    "Bibliography and Library Science"]
50.times do
    Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        genre: Faker::Book.genre,
        classification: classification.sample,
        book_type: book_type.sample,
        year: Faker::Number.between(from: 1940, to: 2018)
    )
end