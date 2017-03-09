class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit_money(sum, date)
    @balance += sum
  end

  def withdraw_money(sum, date)
  end
end
