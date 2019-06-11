document.addEventListener('DOMContentLoaded', function(){

	let bookList = new BookList([ new Book(1, "Children of Blood & Bone", "Tomi Adeyemi", "https://images-na.ssl-images-amazon.com/images/I/61SB-c0mHGL._SX329_BO1,204,203,200_.jpg"), new Book(2, "White Teeth", "Zadie Smith", "https://images-na.ssl-images-amazon.com/images/I/412BMH3wiIL._SX322_BO1,204,203,200_.jpg", 2)])
		bookList.displayAllBooks()

console.log(bookList)

})



		