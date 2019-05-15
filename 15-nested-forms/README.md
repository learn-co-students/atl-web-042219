## Mod 2 - How the hell do servers even?

### Objectives

* Look at relationships in a webapp... organizing books by Author.
  * Adding a book with an author.
* If there's time, see a non-RESTful route: search.

### Waking Up

* Talk about Restful routing.
  * One of the few things possibly worth memorizing in this course.
* Show how to deal with validations and form errors?

### Deliverables

* First, we need a new model: Author.
* Next, we should fix books to have a relationship with authors.
  * Could do this with a data preserving migration
  * or updating the adapter and re-seeding the DB.
* Now, our boss wants to be able to see a list of books by author.
  * Maybe factor out an AuthorsController and BooksController?
* Finally, he's asked to have a page where we can add an author and some of their books.
  * Whoo boy... How do we send an _array_ from a form?
