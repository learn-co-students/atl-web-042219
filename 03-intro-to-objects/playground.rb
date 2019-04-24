require_relative './account'
require 'pry'

def add(x, y)
  x + y
end

def example(data)
  data.reverse
end

puts add(3, 5)
puts "example".reverse

# account1 = { owner: 'hanaa', balance: 100000 }
# account2 = { owner: 'brit', balance: 7 }
# account3 = { owner: 'tez', balanc: 100 }

account1 = BankAccount.new("brit", 400)
account1.withdraw(50)
account2 = BankAccount.new("tez", 5000)
puts account1.same_owner?(account2)

# account1.balance = 100
# account1.balance=(100)

binding.pry
