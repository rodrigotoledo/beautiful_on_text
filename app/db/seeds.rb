10.times.each do
  Movie.create(title: Faker::Movie.title, description: 'é um filme lindo')
end
