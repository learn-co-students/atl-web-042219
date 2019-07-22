## A Programmer's Story

### Or, Interviewing and Technical Growth

---

### Disclaimer

--

* Atlanta Bonus lectures are an experiment. They are ideal for exploring topics
  we don't have time to cover in the normal curriculum. If there's a topic you'd
  be interested in seeing covered please tell me!

--

* In many ways, I _don't know_ how to speak to the experience of bootcamp graduates
  since that isn't my experience. Talk to your coaches! But I do know a few things
  that might be valuable from my own experience...

--

* Please feel free to stop me and ask questions at any point.

---

### Objectives

--

First, the **non-objective**: giving you a substantive tour of Computer Science.

<img src="../images/books.jpg" width="450px;" />

---

### Objectives

* Demonstrate different technical interview styles
* Establish some intuitions about "Big O"
* Establish areas of recommended study

---

### Historical Interview Questions

* Recursion
* Pointers
* Sorting Algorithms
* Tree Traversal
* Weird Trivia
* etc

---

### Today's Interview Problems

* Logic Puzzles

--

* Take Home Apps

--

* Pair Programming

--

* Unit Testing

--

* Code Reviews (on github PR)

--

* Whiteboarding (yeah, still)

---

### A Reasonable Interview

* Stage 1: HR Phone Screen
* Stage 2: Brief call with Engineering Manager
* Stage 3: Whiteboard a few puzzles (like today's starter problems)
* Stage 4: Pair on a project or a larger Take home assignment
  * Pair example: Roman Numeral Kata
  * Take home example: A React app for viewing financial data
* Offer Letter

---

### Today We'll Work Through

--

1. `deduplicate` and `pair_sums` and `mul`
2. `fib` and `memo_fib`
3. `cosmicomics`

--

At every step, we will respect these priorities:

1. Make it right.
2. Make it clean.
3. Make it fast (maybe).

--

And always, _no matter what_, explain what you're thinking or ask the questions you have.

--

Silence (longer than ~5-10 seconds) is the worst possible option in an interview.

---

### Starter Problems

--

1. Write some solutions

--

2. Discuss computational complexity and "Big O" notation
  * Why do we measure in Big O instead of seconds?
  * Do we care about best case, average case, or worst case?
  * What about constant factors?

--

3. Discuss our first three complexity classes
  * Constant Time - O(1), examples: array and hash lookups by index
  * Logarithmic Time - O(log n), examples: "fast" multiplication, binary search
  * Linear Time - O(n), examples: looping through a collection

---

### Fibonacci and the Time/Space Tradeoff

1. Write a solution

--

2. Use Common Lisp's nifty tracing to show how bad it is

--

3. Memoize that sucker and trace again!

  * Hint: There is probably a way to tweak our `pair_sums` method to be linear.

--

Bonus challenge: Try to write a higher order function that takes a single argument function and returns a memoized version of it.

---

### Cosmicomics and Doing Less Work

* Not a ton of time for this.

--

* In short, if you have to try all combinations, you're dealing with quadratic complexity - O(n^2)

--

* In practice, quadratic algorithms either have to be used on small data sets or _BIG_ servers.

--

* We might not be able to beat quadratic time but getting constant factors down can make a big difference "in the real world"!

--

* Best way to speed up an algorithm: Do Less Work!

---

## Let's Talk About This Guy

--

<img src="../images/excitement.jpg" />

---

### A Few Interviews I Survived

* [cmg-tic-tac-toe](https://github.com/coxmediagroup/Tic-Tac-Toe)

--

* [emcien-dev-test](http://web.archive.org/web/20120701232045/emcien.com/dev-test)

---

### And a Few I Didn't

--

* Damballa - couldn't tree traversal good
* Pindrop - strange architecture discussions
* Mailchimp? (turned down by one team, courted by another)

--

In my experience, learning about Sampling Profilers and how to find N+1 queries is as valuable as algo chops.

---

### Focus on what keeps you motivated

--

For me, I'm a sucker. I think computers are awful.

--

And I just want to know more about them.

--

(show some browser tabs on federated social networks, deconstructconf, hillel wayne, etc)

--

So simulating _old computers_ by writing an emulator or studying the artifacts of "system builders" from decades before motivates me. I don't care about the commercial web. I don't care about big frameworks. That's made my life harder sometimes but you have to follow your passion and stay curious.

---

### Areas of Attack

#### Programming Fundamentals

![SICP](../images/sicp.jpg)

* Alternatives: Paradigms of AI Programming, The Functional Approach to Programming
* [edabit](https://edabit.com/) - Learn to code with interactive challenges
* [codewars](https://www.codewars.com/) - Practice code katas
* [hackerrank](https://www.hackerrank.com/) - Code and get hired

---

### Areas of Attack

#### Code Organization

![Refactoring](../images/refactoring.jpg)

* Alternatives: Clean Code, Smalltalk Best Practice Patterns, The Pragmatic Programmer, Thinking Forth, POODR

---

### Areas of Attack

#### Testing

* Watch talks on TDD by Gary Bernhardt or Justin Searl
  * [searl](https://www.google.com/search?q=justin+searl+tdd)
  * [bernhardt](https://www.destroyallsoftware.com/screencasts/catalog)

--

* Add tests to a project
  * [ruby - betterspecs](http://www.betterspecs.org/)
  * [rails - rails testing guide](https://guides.rubyonrails.org/testing.html)
  * [js - jest](https://jestjs.io/)
  * [react - enzyme](https://airbnb.io/enzyme/)

--

* Read "real world" code?
  * [lobste.rs](https://github.com/lobsters/lobsters)
  * [discourse](https://github.com/discourse/discourse)

---

### The Real tl;dr

* Expect to interview _many_ places.
* Expect to have many _different_ experiences.

--

* Expect to get rejected for a bit before you get comfortable (and lucky) and get an offer.
* Always talk through your thought process and ask questions if you don't understand the problem.

--

* Don't be scared of learning about any part of Computer Science, algorithms included.
* Stay curious and _keep. on. learning._
