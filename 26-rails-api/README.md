## Rails API

### Objectives

* Understand the difference between `rails new` and `rails new --api`
* Understand the need for CORS
* Understand how to manually construct JSON responses
* Know how to declare a status code for a response

### Deliverables

* Build an app for looking at cute pets (User has_many Pets)
* Use Rails API to serve JSON
* List pets and what user they belong to
* Create a new pet
* Delete a pet if it is yours
* Maybe a detail tab to show the image if there's time?

#### A brief guide to status codes

* 200 - OK, for a successful GET
* 201 - Created, for a POST / new object
* 422 - Unprocessable Entity, for unsuccessful saves / validation failures
* 204 - No Content, if you deleted an object, there's nothing to send back!
* 202 - Accepted, if you updated an object and it saved successfully
