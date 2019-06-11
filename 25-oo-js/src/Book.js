class Book {

	constructor(id, title, author, cover){
		this.id = id
		this.title= title
		this.author = author
		this.cover = cover 

		//title
		//author
		//cover
	}

	editBook(title, author, cover,id){

		this.title= title
		this.author= author 
		this.cover= cover 
		this.id= id 
	}


	getView(){

	let div = document.createElement('div')

	div.className = 'card'
	
	div.dataset.id = this.id 

	let img = document.createElement('img')

	img.src = this.cover

	let h3 = document.createElement('h3')

	h3.innerText = this.title

	let p = document.createElement('p')

	p.innerText = this.author

	let edit = document.createElement('button')

	edit.innerText = "Edit"

	edit.addEventListener('click', this.handleEditClick)

	let del = document.createElement('button')

	del.innerText = 'Delete'

	div.appendChild(img)

	div.appendChild(h3)

	div.appendChild(p)
	div.appendChild(edit)
	div.appendChild(del)

	return div 
	}

	//edit book
	//adding book to the DOM 


}