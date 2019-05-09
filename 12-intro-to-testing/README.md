# Intro to Testing

## Deliverables

* Create a "Hero" Class
  * Accepts an array of abilities
  * Each ability will be represented by a hash with a name and "coolness" rating
* Create a method which returns the heros coolest ability
* Create a method which returns the heros ability names ordered alphabetically
* Create method add_ability, which accepts an ability and adds it to the array




## Steps

1. Project overview. Demonstrate coolest ability in console.
2. Write `ordered_abilities`. Refactor `abilities`.
3. Demonstrate breakage.
  * SUBSECTION: Why Tests Matter
4. Constrast manual vs automated testing.
  * SUBSECTION: Development Process
5. Install rspec by adding to gemfile, running `bundle`, `rspec --init`.
6. Write unit test for `coolest_ability`.
  * Talk a bit about `describe` and `it`, potentially `let`.
  * SUBSECTION: Testing Process.
  * Demystify `expect` and `be`.
7. Fix the breakage. Write another unit test or two. :)
8. Discuss when testing is hard. Wrap up with benefits of tests.



## Why Tests Matter

Breaking existing code while adding features is the easiest thing in the world.

> Every program is part of some other program and rarely fits. - Alan Perlis

Software is never finished. Users and managers always want to change things.
So software is always changing. Sooner or later the changes "don't fit".

Tests make it possible to change code with _confidence_.
Refactoring and rewriting are basically impossible without tests.
You'll also know if you break anything while adding new features.

**We need tests as a wall at our back so changing code doesn't become impossible. (Because eventually the changes needed are deep.)**

## Development Process

### Test After

1. Read (any specifications or documentation)
2. Plan (how to build it)
3. Write the code
4. Test it (manually or with unit tests/automation)

### vs Test Before (TDD)

1. Read (any specifications or documentation)
2. Plan (how to build it)
3. Write a _failing test_
4. Write code to _pass the test_
5. Refactor

## Testing Process

Whether my tests are manual or automated, my thought process is the same!

* Given some data ...
* When I run a method ...
* Then I expect to see ...

## When Testing Gets Tricky

* When I don't know what I _expect_.
  * For strange and unfamililar problems, I sometimes prototype without tests.
  * Then I throw the prototype away and build a version with tests.
* Code that interacts with API (stripe integration @ showcaseidx)
* Code that interacts with DB  (Foo.all, user.save)
* Code that interacts with I/O (gets.chomp, puts, etc)

We only want to test _our_ code.
We usually assume ActiveRecord works and APIs work as documented.

In these situations, we sometimes stub or mock methods.
These are techniques that let us temporarily override
how a method works or what it returns during testing.

We won't cover them today. :)

## Benefits of TDD

* Clear next step forward in development. Write a failing test or fix a failure.
* Having to write tests forces us to plan and build expectations of our code.
* Large methods with lots of interactions are harder to test.
  * (So tests push us to break up our code into manageable pieces.)
