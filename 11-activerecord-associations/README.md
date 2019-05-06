## README:

### Today's Objectives

* Answer questions from weekend labs
* Use associations to relate models
* Use a seed file to put info in the database
* Add some validations to enforce rules about our data
* Maybe do something cute with backticks, `open`, `say`, `afplay`, etc
   * ~/p/f/b/a/links ❯❯❯ say 'good morning tez'
   * ~/p/f/b/a/links ❯❯❯ open "http://google.com"
   * ~/p/f/b/a/links ❯❯❯ afplay example.mp3
* Demo a CLI class
   - Maybe use [tty gems](https://piotrmurach.github.io/tty/)

Active Record naming conventions are [important!][naming conventions].

Process for adding relationships:

* Decide on the relationship type
* Check the [associations guide][assoc] to see the table layout.
* Write the migrations.
* Write the classes and put the associations in them.

[assoc]: https://guides.rubyonrails.org/association_basics.html#the-has-many-association
[naming conventions]: https://guides.rubyonrails.org/active_record_basics.html#convention-over-configuration-in-active-record
