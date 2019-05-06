Animal.destroy_all
Zoo.destroy_all

atlanta = Zoo.create(
  name: 'Zoo Atlanta',
  location: 'Atlanta, GA'
)

chicago = Zoo.create(
  name: 'Zoo Chicago',
  location: 'Chicago, IL'
)

jurgen = Animal.create(
  name: 'jurgen',
  species: 'cat snake',
  weight: 65,
  image_url: "http://redlinernotes.com/images/beach_2014/jurgen_habermantis.jpg",
  zoo_id: atlanta.id
)

seyla = Animal.create(
  name: 'Seyla',
  species: 'Bouvier',
  weight: 65,
  image_url: 'http://redlinernotes.com/images/beach_2014/herp_derp.jpg',
  zoo_id: chicago.id
)
