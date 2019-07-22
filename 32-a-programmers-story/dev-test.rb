# -*- coding: utf-8 -*-

class Country < ActiveRecord::Base
  has_many :cities
end

class City < ActiveRecord::Base
  belongs_to :country
  has_many :bars
end

class Bar < ActiveRecord::Base
  belongs_to :city
end


# 1)
#     How would you (in a controller method) assign to @country the Country named ‘France’?

## I'm assuming this is mostly meant to test ORM knowledge. I apologize if I misinterpret intent anywhere.
## If I should have fleshed out an application with classes+methods instead of just demonstrating ORM, let me know.
@country = Country.where(:name => 'France')

#     How would you assign to @cities an Array of all the cities in France?

@cities = City.joins(:country).where(:country => {:name => 'France'})

#     How would you assign to @bars an Array of all the bars in France?

@bars = Bar.joins(:city => :country).where(:country => {:name => 'France'})

#     How would you assign to @directory an Array of the names of all the bars in France, sorted?

@directory = @bars.select(:name).order(:name)

#     Do any of the above answer change if there are 400 cities?
## I am a bit unclear on the includes vs joins distinction. I believe there is not a serious performance impact to using joins here so no.

#     How about if there are 20,000 bars?
## It would probably be better to use :includes in @directory to reduce database load.


# 2)
# Let S be the set of numbers greater than zero and less than 100,000 that are evenly divisible by 19.

## I prototyped these solutions in Lisp since I have never used Ruby or Rails before,
## then used irb and the docs to check my answers.

#     How many numbers are there in S? 5263
##  (defvar *toy* (loop for i from 1 to 99999 when (zerop (mod i 19)) collect i)) => *TOY*
##  (length *toy*) => 5263
toy = (1..99999).select{|i| i % 19 == 0}
toy.length

#     How many numbers in S have a square that ends in a 1? 1053
##  (loop for i in *toy* counting (= 1 (mod (expt i 2) 10)))

toy.select{|i| (i * i) % 10 == 1}.length

#     How many numbers in S have a reflection that is also in S? (The reflection of 145 is 541) 280
##  (let ((reflections (mapcar (lambda (x) (reverse (princ-to-string x))) *toy*)))
##    (loop for i in reflections counting (member (parse-integer i) *toy*)))

toy.select{|i| toy.include?(i.to_s.reverse.to_i)}.length

#     How many numbers in S can be multiplied by some other number in S to produce a third number in S? 794
##  (let ((count 0))
##    (flet ((factor-p (pair) (and (zerop (mod (apply '* pair) 19))
##                                 (< (apply '* pair) 100000))))
##          (alexandria:map-combinations (lambda (x) (when (factor-p x) (incf count))) *tmp* :length 2)
##          count)))

## toy.combination(2).select{|x, y| toy.include?(x * y)}.length is pretty but incredibly slow
## instead of waiting for the heat death of the universe, remember that 1 isn't present in S
## so rather than test for membership directly, check divisibility by 19 and size
toy.combination(2).select{|x, y| (x * y) % 19 == 0 && (x * y) < 100000}.length


# 3)

# An ant is walking on the squares of a 5x5 grid - it starts in the center square.

# Each second, it will choose (with equal probability) to do one of the following:

#     Move north one square
#     Move south one square
#     Move east one square
#     Move west one square
#     Do not move

# If it cannot perform the action it has decided on (move west while on the west edge, for example), it sits in place.

# After one second, it has a 20% chance of being in the center, and a 20% chance of being in each adjacent square. (and a 0% chance of being in any other square on the board).
# You may ignore floating point error accumulation.

#     What is the probability that the ant is on the center square after 15 seconds?

## We don't need programming of any kind for this, only math. We can model it with combinatorics.
## 20% is .2 or a 1 in 5 chance, i.e. (expt 5 1). Thus (expt 5 15) => 30,517,578,125 is the number
## of possible move combinations after 15 seconds. But how many of those leave the ant in the center?
## 1 obviously does (all :do-not-move). But any number of others could walk out and back.
## Let's look at part 2.

#     What is the probability that the ant is on one of the outermost squares after 1 hour?

=begin

I have discovered Ruby's block comments. Also, my feeble math brain needs code for this. Clearly,
making a 1 in 5 choice 3600 times won't work as (expt 5 3600) is a 2517-digit number. So, how do
we model this random walk? We need to use permutations rather than combinations as order DOES MATTER.
For example, we can't go left after reaching the left edge. Repetition also needs to be present
though as we can move the same direction any number of times. Since my mathematical and algorithmic
knowledge is lacking here, I will now google around about random walks, etc for a bit.

...

Ouch, might not be mathematically ready for this job if this is representative. After some thinking,
I figure one essential insight to this problem is that the majority of moves don't matter. It
takes at most 8 moves (from one corner to the opposite corner) to cross the board. Therefore, we
could just calculate all possible last 8 moves for 25 different starting positions. That's
still 10 million walks but that's quite feasible on a modern processor with the right algorithm.
It's also an approximation since the distribution of starting positions is probably not really equal.
I don't see an easy way to quickly and deterministically solve this which can mean only one thing:
Probabilistic algo & AI research time!

...

Seems I should be using Markov Chains. Code time!
Honesty note, All of the test until this question: 1-2 hours, this question: 4-6 hours.

=end

=begin

(defpackage :emcien-test
  (:use :cl))

(in-package :emcien-test)

#|
We don't need an explicit grid. Let's just use an integer to represent a position in the grid. Now Markov!

00 01 02 03 04
05 06 07 08 09
10 11 12 13 14
15 16 17 18 19
20 21 22 23 24

|#

(defvar *markov-chain* (make-array 25))

(defvar *transition-kernel* (make-array '(25 25)))

(defun row-options (row)
  (let ((options nil))
    (unless (zerop (mod row 5))
      (push (1- row) options))
    (unless (= 4 (mod row 5))
      (push (1+ row) options))
    (unless (< row 5)
      (push (- row 5) options))
    (unless (> row 19)
      (push (+ row 5) options))
    options))

(defun fill-transition-kernel ()
  (dotimes (row 25)
    (let ((columns (row-options row)))
      (dolist (col columns)
        (setf (aref *transition-kernel* row col) .2))
      (ecase (length columns)
        (2 (setf (aref *transition-kernel* row row) .6))
        (3 (setf (aref *transition-kernel* row row) .4))
        (4 (setf (aref *transition-kernel* row row) .2))))))

(defun init ()
  (setf (aref *markov-chain* 12) 1.0)
  (fill-transition-kernel))

(defun dot-product (a b)
  (loop for i from 0 to (1- (length a))
     summing (* (aref a i) (aref b i))))

(defun state-probability (state)
  (let ((probs (coerce (loop for i from 0 to 24
                          collecting (aref *transition-kernel* state i)) 'vector)))
    (dot-product *markov-chain* probs)))

(defun markov-step ()
  (let ((states (loop for i from 0 to 24 collect i)))
    (setf *markov-chain* (map 'vector #'state-probability states))))

(defun outer-square-prob ()
  (let ((indices '(0 1 2 3 4 5 9 10 14 15 19 20 21 22 23 24)))
    (apply #'+ (mapcar (lambda (x) (aref *markov-chain* x)) indices))))

(defun main ()
  (init)
  (dotimes (i 15) (markov-step))
  (format t "Odds of center square after 15 seconds: ~4,2$%~%"
          (* 100 (aref *markov-chain* 12)))
  (dotimes (i 3585) (markov-step))
  (format t "Odds of outer squares after 01 hour: ~4,2$%~%"
          (* 100 (outer-square-prob))))

=end

## Center Square Odds: 04.1249%
##  Outer Square Odds: 04.0001%
