//Get books from the server
  //Add em to the DOM tree

//Create books
  //Persist em
  //Add em to the DOM tree

//Update existing book
  //Add an edit button
  //Setup form to handle edit
  //Persist it

//Delete a book
  //Delete it from DOM
  //Persist it

document.addEventListener('DOMContentLoaded', function(){

    document.querySelector('#book-form').addEventListener('submit',  handleCreateBook)
    document.querySelector('#update').addEventListener('click', handleUpdateBook)
    getBooks();
})


function getBooks(){

  fetchBooks()
  .then((data)=> addBooks(data))
  .catch((error)=>console.log('Your code sucks. Here is an error',error))
}


function handleUpdateBook(e){

  const updatedBook = {
    id: e.target.parentElement.dataset.id,
    title: e.target.parentElement.title.value,
    author: e.target.parentElement.author.value,
    img: e.target.parentElement.cover.value
  }

  updateBook(updatedBook)
  .then((data)=>console.log(data))
}

function handleCreateBook(e){

    e.preventDefault()

    let book  = {
        title: e.target.title.value,
        author: e.target.author.value,
        img: e.target.cover.value
    }

    insertBook(book)
    .then((book) => addNewBook(book))

    e.target.reset()
}

function handleDeleteBook(e,book){
      deleteBook(book)
      .then((data)=> e.target.parentElement.remove())

      //console.log("This  is the event", e.target.parentElement)

}

function handleEditBook(e){

  const form = document.querySelector('#book-form')
  const card = e.target.parentElement

  form.title.value = card.querySelector('h3').innerText
  form.author.value = card.querySelector('p').innerText
  form.cover.value = card.querySelector('img').src
  form.dataset.id = card.dataset.id

  console.log(form)
}


function addBooks(books){

    books.forEach(book =>{

        addNewBook(book)
    })
}

function addNewBook(book){
    const book_list = document.querySelector('#book-list')

    const div = document.createElement('div')

        div.className = 'card'

        div.dataset.id = book.id

        const img = document.createElement('img')

        img.src = book.img

        const h3 = document.createElement('h3')

        h3.textContent = book.title

        const p = document.createElement('p')

        p.textContent = book.author

        const delBtn = document.createElement('button')

        delBtn.innerText = "Delete"

        delBtn.addEventListener('click',(e)=>{
          handleDeleteBook(e,book)
        })

        const editBtn = document.createElement('button')

        editBtn.innerText = "Edit"

        editBtn.addEventListener('click',handleEditBook)

        div.appendChild(img)

        div.appendChild(h3)

        div.appendChild(p)

        div.appendChild(delBtn)

        div.appendChild(editBtn)

        book_list.appendChild(div)

  }
