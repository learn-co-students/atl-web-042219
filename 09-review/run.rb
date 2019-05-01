require 'pry'
require_relative 'teacher'

dogs = [ { name: 'jurgen', age: 6 }, { name: 'seyla', age: 8 } ]

brit = Teacher.new('brit', 7, 4)
puts "can't get name" unless brit.name == 'brit'
safae = Teacher.new('safae', 4, 19)

class Array
  def my_select
    results = []
    self.each do |item|
      if yield(item)
        results << item
      end
    end
    results
  end

  def my_max_by
    best_score = 0
    best_item = nil
    self.each do |item|
      score = yield(item)
      if score > best_score
        best_score = score
        best_item = item
      end
    end
    best_item
  end
end

binding.pry
