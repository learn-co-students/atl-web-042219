//delete book 
	//add book 
class BookList {


	constructor(books){

		this.books = books

	}

	displayAllBooks(){
	const bookList = document.querySelector("#book-list")

		this.books.forEach(book =>{

			bookList.appendChild(book.getView())

		})



	}


}