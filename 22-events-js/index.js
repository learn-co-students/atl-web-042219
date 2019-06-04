//add an event listener to my delete button 
//on delete or click
    //delete book 

//add event listener to form
//add calback 
    //get values from inputs
    //add  a new book based on values



document.addEventListener('DOMContentLoaded', function(){
    document.querySelector('#deleteBtn').addEventListener('click', handleDeleteBook )

    document.querySelector('#book-form').addEventListener('submit',  handleCreateBook)
    addBooks()
})

function handleCreateBook(e){

    e.preventDefault()

    let book  = {

        title: e.target.title.value, 
        author: e.target.author.value, 
        img: e.target.cover.value
    }

    addNewBook(book)

    e.target.reset()
}

function handleDeleteBook(e){

        e.target.parentElement.remove()
        console.log("This  is the event", e.target.parentElement)


}


function addBooks(){
    
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