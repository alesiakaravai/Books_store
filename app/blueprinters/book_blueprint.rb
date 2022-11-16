class BookBlueprint < Blueprinter::Base
  # identifier :id

  fields :name, :year, :quantity

  association :authors, blueprint: AuthorBlueprint
  association :genres, blueprint: GenreBlueprint
end