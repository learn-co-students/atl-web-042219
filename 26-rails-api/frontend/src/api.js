const BASE_URL = 'http://localhost:3000'

const getAnimals = () => {
  return fetch(`${BASE_URL}/animals`).then(res => res.json())
}

const createAnimal = (data) => {
  return fetch(`${BASE_URL}/animals`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(data)
  }).then(res => res.json())
}
