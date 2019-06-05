//Get books from the server
  //Add em to the DOM tree

//Create books
  //Persist em
  //Add em to the DOM tree

document.addEventListener('DOMContentLoaded', function(){

    document.querySelector('#book-form').addEventListener('submit',  handleCreateBook)

    getBooks();
})


function getBooks(){

  fetchBooks()
  .then((data)=> addBooks(data))
  .catch((error)=>console.log('Your code sucks. Here is an error',error))
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

function handleDeleteBook(e){

        e.target.parentElement.remove()
        console.log("This  is the event", e.target.parentElement)


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

        const img = document.createElement('img')

        img.src = book.img

        const h3 = document.createElement('h3')

        h3.textContent = book.title

        const p = document.createElement('p')

        p.textContent = book.author

        const delBtn = document.createElement('button')

        delBtn.innerText = "Delete"

        delBtn.addEventListener('click',handleDeleteBook)
        //add all elements to div

        div.appendChild(img)

        div.appendChild(h3)

        div.appendChild(p)

        div.appendChild(delBtn)

        book_list.appendChild(div)

  }
