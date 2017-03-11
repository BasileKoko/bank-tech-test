class BankAccount


  def initialize
    @balance = 0
    @log = []
  end

  def deposit_money(sum, date = DATE)
    @balance += sum
    @log << [date, sum, "", @balance]
  end

  def withdraw_money(sum, date = DATE)
    raise "You do not have enough fund" if sum > @balance
    @balance -= sum
    @log << [date, "", sum, @balance]
  end

  def print_statment
    format_statement
  end

  private
    attr_reader :balance, :log
    DATE = (DateTime.now).strftime("%d/%m/%Y")
    STATEMENT_HEADER = ["date", "credit", "debit", "balance"]

    def format_statement
      statement_header_format = STATEMENT_HEADER.join("||")
      log_format = log.map {|el| el.join("  ||")}.join("\n")
      statement_header_format + "\n" + log_format
    end

end
