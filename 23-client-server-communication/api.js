function fetchBooks(){
  return fetch('http://localhost:3000/books').then((res)=>res.json())
}

function insertBook(book){
  return fetch('http://localhost:3000/books',{
    method: 'POST',
    headers: {
      'Content-Type':'application/json'
    },
    body: JSON.stringify(book)
  })
  .then((res)=>res.json())
}
