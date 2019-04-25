# Intro to Object Orientation

## Learning Objectives (flatiron sanctioned)

* Define `object` in programming domain
* Explain the concept of sending messages
* Create a class and instantiate an instance of the class
* Explain the difference between a class and an instance
* Pass arguments to `new` by defining an initialize method in class
* Create instance methods
* Call methods on the implicit or explicit `self`
* Define attribute readers and writers using `attr_` macros
* Get more practice with array compositions (`each`, `map`, `select`/`filter`)
* Explain the need for variable scope and why it's important to not utilize global variables





### Whiteboard exercise - 5 classes and instances of each money

classes | instances
========|==========
String  | "cookies"
Symbol  | :example
Array   | [1,2,3]
Hash    | { brit: 'awake?' }
Integer | 42
Float   | 4.9



## Learning Objectives (the brit edition)

* Gain some intuition for the phrase "Everything is an object"
* Explain the difference between classes and instances
* Understand the difference between local variable and instance variable scope
* Know what method dispatch is and how it works
* Determining execution context - are we "inside" or "outside" an object?

## Notes

- Whiteboard exercise: classes and instances table
- What are classes?
- Let's start by talking about the built in classes in Ruby.
  * All the data you've been working with is an instance of some class.
  * They're just _values_. What can we do with ruby values?
    * store them, pass them, return them, call methods on them
- Exciting revelation: almost _everything_ in ruby is a method call!
  * Questions to answer: what is a method call? what is a method chain?
  * Things to show: Weird syntax for addition, equality, indexing, `send`.
  * Things to probably dodge for the moment? `ancestors`
- Exciting revelation: We can get a list of methods an object supports!
    * `.methods` or,  my preference, `ls` in pry
- Exciting revelation: classes in Ruby are open/runtime extensible.
  * Add an example method to string. Show that all Ruby strings are updated.
- Bank account example: Why do we have classes? To organize code.
  - If our data changes, doesn't the way we have to interact with it too?
    * Might as well group those things together then.
- Graph memory for an empty instance, then getters and setters, then initialize.
  * _The only way to interact with an object is through its methods_. Full stop.
  * Whiteboard question: Are the args to `initialize` on line 2 local or instance vars?
  * Reminder: Local variables are thrown away/GC'd when you reach end of method.
  * Reminder: A method name cannot begin with an `@`.
  * Important takeaways:
    * Method arguments get stored in _local variables_ inside the method.
    * We "copy" local variables into instance variables because we want them
    * Instance variables are not visible from "outside" an object.
    * Objects can hold other objects in instance variables.
      * Of any type! .... Because everything is just an object!
- Make sure we have local var, method, and class in account. Can playground see?
- Write a method that takes another account as an argument. How to compare them?

## Deliverables

Here is a naive implementation of a bank account in Ruby using only a hash which stores key-value pairs.

```ruby
bank_account = {"user_id": 3, "balance": 100}
```

Write an implementation of a bank account that meets the following requirements:

* can print the balance of the account
* can deposit money into the account
* can withdraw money from the account
* keeps track of the account number
* keeps track of the customer id of the account
