class BankAccount
  attr_reader :balance, :log

  def initialize
    @balance = 0
    @log = []
  end

  def deposit_money(sum, date = Date.now)
    @balance += sum
    @log << [date, sum, "--", @balance]
  end

  def withdraw_money(sum, date = Date.now)
    raise "You do not have enough fund" if sum > @balance
    @balance -= sum
    @log << [date, "--", sum, @balance]
  end
end
