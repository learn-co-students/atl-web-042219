class BankAccount
  def initialize(owner, balance=100)
    @owner = owner
    @balance = balance
  end

  def balance
    @balance
  end

  def owner
    @owner
  end

  def owner=(new_owner)
    @owner = new_owner
  end

  # def balance=(new_balance)
  #   @balance = new_balance
  # end

  def withdraw(amount)
    if amount > @balance
      self.insufficient_funds
    else
      @balance -= amount # @balance = @balance - amount
      puts "You withdrew #{amount} dollars and now have #{@balance} left."
    end
  end

  def same_owner?(other_account)
    if self.owner == other_account.owner
      true
    else
      false
    end
  end

  def insufficient_funds
    puts "UH OH! No more $$"
  end
end

def example_method
  puts "hello world"
end

example_variable = "a local"
