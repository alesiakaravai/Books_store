# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

BooksGenre.delete_all
Genre.delete_all


(0..10).each{|genre| Genre.create(name: "genre #{genre}")}

(0..10).each{|author| Author.create(name: "author #{author}")}

(0..10).each{|subscriber| Subscriber.create(name: "subscriber #{subscriber}")}

(0..100).each do |book| 
  Book.create(name: "book #{book}", year: rand(1999..2022), quantity: rand(0..100))
  author_index = rand(0..10)
  author_first = Author.all[author_index]
  author_second = Author.all[author_index + 1]
  Book.last.authors<<author_first
  Book.last.authors<<author_second

  genre_index = rand(0..10)
  genre_first = Genre.all[genre_index]
  genre_second = Genre.all[genre_index + 1]
  Book.last.genres<<genre_first
  Book.last.genres<<genre_second
end



