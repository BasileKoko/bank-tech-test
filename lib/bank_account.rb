class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit_money(sum, date)
    @balance += sum
  end

  def withdraw_money(sum, date)
    raise "You do not have enough fund" if sum > @balance
    @balance -= sum
  end
end
