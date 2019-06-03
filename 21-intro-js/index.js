console.log("hello world!")
//find h1 tag
//change from Book List --> Favorite Books
let h1Element = document.querySelector("h1")

console.log("This is my element!!", h1Element)

h1Element.innerText = "Favorite Books"

//create a book element with JS

const bookList = document.querySelector('#book-list')

//iteration by number
 
 let myFunction = function (){
 	console.log("my function!")
 }

let bookIterator = function(book){


	let bookElement = document.createElement("div")

	bookElement.className = "card" 
	let bookImg = document.createElement("img")

	bookImg.src= book.img

	let bookTitle = document.createElement("h3")

	bookTitle.innerText = book.title

	let bookAuthor = document.createElement("p")

	bookAuthor.innerText = book.author 

	bookElement.appendChild(bookImg)
	bookElement.appendChild(bookTitle)
	bookElement.appendChild(bookAuthor)

	bookList.appendChild(bookElement)

}


books.forEach(bookIterator)


books.forEach(function(book){
let bookElement = document.createElement("div")

	bookElement.className = "card" 
	let bookImg = document.createElement("img")

	bookImg.src= book.img

	let bookTitle = document.createElement("h3")

	bookTitle.innerText = book.title

	let bookAuthor = document.createElement("p")

	bookAuthor.innerText = book.author 

	bookElement.appendChild(bookImg)
	bookElement.appendChild(bookTitle)
	bookElement.appendChild(bookAuthor)

	bookList.appendChild(bookElement)

})















