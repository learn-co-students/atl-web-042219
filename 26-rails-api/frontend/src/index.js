document.addEventListener('DOMContentLoaded', setupPage);

function setupPage() {
  getAnimals().then(renderAnimals)
  addFormHandler()
}

function addFormHandler() {
  let form = document.querySelector('form')
  form.addEventListener('submit', submitForm);
}

function submitForm(event) {
  event.preventDefault();
  debugger;
  let name = event.target.name.value;
  let image = event.target.image.value;
  let species = event.target.species.value;
  let params = { name: name, image: image, species: species }

  createAnimal(params).then(data => console.log(data))
}

function renderAnimals(data) {
  let tbody = document.querySelector('tbody')
  data.forEach(animal => {
    let row = document.createElement('tr')
    let name = document.createElement('td')
    let image = document.createElement('td')
    let species = document.createElement('td')
    let imageLink = document.createElement('a')
    name.textContent = animal.name
    imageLink.href = animal.image
    imageLink.textContent = "Cute Photo"
    image.appendChild(imageLink)
    species.textContent = animal.species

    row.appendChild(name)
    row.appendChild(image)
    row.appendChild(species)

    tbody.appendChild(row)
  })
}
