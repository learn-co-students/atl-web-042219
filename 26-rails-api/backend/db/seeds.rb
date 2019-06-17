# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.destroy_all

greg = Animal.create!(name: 'greg', image: 'https://preview.redd.it/62utcjapgvf21.jpg?width=640&crop=smart&auto=webp&s=f12517b196c3e7cb5355875c2929c1f641a1ace3', species: 'dog')
winona = Animal.create!(name: 'winona', image: 'https://preview.redd.it/fjxjp1o4gvf21.jpg?width=640&crop=smart&auto=webp&s=4dfcd21eea96985daba5123653351b9db8978b31', species: 'dog')
jim = Animal.create!(name: 'jim', image: 'https://preview.redd.it/yakxz5l90vf21.jpg?width=640&crop=smart&auto=webp&s=9f7a535afa223c3309657ab37698d4227de9322a', species: 'dog')
fifi = Animal.create!(name: 'fifi', image: 'https://i.redd.it/nizlivck1vf21.jpg', species: 'lil bun bun')
