function fetchBooks(){
  return fetch('http://localhost:3000/books').then((res)=>res.json())
}

function updateBook(updatedBook){
  return fetch(`http://localhost:3000/books/${updatedBook.id}`,{
    method: 'PATCH',
    headers: {
      'Content-Type':'application/json'
    },
    body: JSON.stringify(updatedBook)
  }).then((res)=>res.json())
}

function deleteBook(book){
  return fetch(`http://localhost:3000/books/${book.id}`,{
    method: 'DELETE',
    headers: {
      'Content-Type':'application/json'
    },
    body: JSON.stringify(book)
  }).then((res)=>res.json())
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
