require_relative 'bank_account'

class BankStatement

  STATEMENT_COLUMS = ["date", "credit", "debit", "balance"]

  def print_statment(bank_account)
    logs = bank_account.log
    STATEMENT_COLUMS.join("||") + "\n" + logs.map {|el| el.join("  ||")}.join("\n")
  end
end
