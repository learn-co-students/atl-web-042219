## Mod 2 (a preview) - 5 minutes

## Today

### To Build...

A tiny library.

* make a wonderful homepage
* list all the books
* get info on a single book
* add a book to the library

## Waking Up

* If we visit routes defining `@books` and `@book`, can we see both vars?
* How can we explain this behavior?
* Let's add a new route for `get '/books/new'`. Why can't we get to that page?

### More behavior - CRUD

* REVIEW: Viewing an individual book.

* Interlude: Development process for web apps.

* Creating a book. This is big! Rest of lecture. :)
* Editing and Deleting would be nice. Maybe today, maybe not.
  * Y'all can tell me to speed up or slow down. Don't get bored!


### Why are forms hard?

* Well, they rely on _every part_ of MVC.
  * It relies on the model, for us to know what fields and inputs we need data for.
  * It relies on the controller/routes, for us to know where the form should be sent for processing.
  * It _is_ a view, and the way we define the inputs *determines how the controller sees the data*!

Also, somewhat surprisingly, a form is always split up between two routes:
  * One route sends the HTML for the page that displays the form
  * The other route receives the information in the form and processes it

We will get much more practice with this. Forms are hard but _so_ important.
