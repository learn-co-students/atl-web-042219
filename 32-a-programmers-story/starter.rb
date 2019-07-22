require 'pry'

def dedupe(items)
  ## Input: An array of items of unknown type.
  ## Output: An array with any _sequential duplicates_ removed.
  ## Example: dedupe([1,2,3,3,3,4,5,3]) -> [1,2,3,4,5,3]
  result = []
  items.each_with_index do |item, index|
    neighbor = items[index + 1]
    result << item unless item == neighbor
  end
  result
end

def pair_sums(numbers, target)
  ## Input: An array of numbers and a target to reach.
  ## Output: An array of pairs of numbers that sum to the target.
  ## Example: pair_sums([4,9,8,27,22], 31) -> [[4,27], [27,4], [9,22], [22,9]]
  ## Bonus: No duplicates, i.e. [[4,31], [9, 22]]
  result = []
  numbers.each_with_index do |x, index|
    numbers[index..].each do |y|
      if x + y == target
        result << [x, y]
      end
    end
  end
  print result
end

pair_sums([4,9,8,27,22], 31)

def mul(a, b)
  ## Input: Two numbers to be multiplied, a and b.
  ## Output: The product of a and b.
  ## Example: mul(4, 5) -> 20
  ## NOTE: Do not use the built-in multiplication operator.
  total = 0
  b.times do
    total += a
  end
  total
end

def fast_mul(a, b)
  product = 0
  until b.zero?
    if b.even?
      a = a + a
      b = b / 2
    else
      b = b - 1
      product = a + product
    end
  end
  product
end

# binding.pry