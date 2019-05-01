# Intro to ORMs (Object Relational Mappers)

## Reflections

* This _morning_ I want you focused on the ORMs material.
* There is a _Flatiron Way_ talk at 12 so get lunch early and bring it back.
* This _afternoon_ I want you shifting your mindset towards the code challenge.
  * This means reviewing labs on OO Ruby and Object Relationships.
  * We will have an optional but encouraged _review lecture_ from 2 to 3 today.
  * This review lecture should be _student driven_. Bring questions. 😍

* As you revisit OO Ruby, I want you to pay less attention to the tests.
  * REMINDER: There will not be specs on the code challenge.
  * Break the habit of paying too much attention to green lights.
  * How can you manually test? When you need to, how can you see the data? Etc

## Deliverables

* Update the tweet instance's `id` once saved.
* We probably should be able to update a tweet _after_ it's made.
  * So `save` should update a tweet if it exists, insert if it doesn't exist.
  * Actually, twitter doesn't do this. Wow, our app already better than twitter?

### Version 2: Users and Tweets, but related

A tweet belongs to a user and has some message content
  * To relate it back to the user, we want to make sure tweets have a user_id FK
A user has a username, and has many tweets

Dang ... do we have to write all the querying and saving logic again? 😭

It ought to be very similar, maybe we can factor it out into a Base Class?
* Enter BasicORM
  * Probably start with .all and get to .save if there is time
