**Specification**

- Acceptance criteria  

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see:

date       || credit || debit   || balance  
14/01/2012 ||        || 500.00  || 2500.00  
13/01/2012 || 2000.00||         || 3000.00  
10/01/2012 || 1000.00||         || 1000.00  


Gems used
```ruby
source "https://rubygems.org"
ruby '2.3.3'
gem 'rake'
gem 'rspec'
gem 'coveralls'

```
Testing code in PRY

```
[1] pry(main)> require './lib/bank_statement'
=> true
[2] pry(main)> bank_account = BankAccount.new
=> #<BankAccount:0x007fa42398c578 @balance=0, @log=[]>

[3] pry(main)> bank_account.deposit_money(400, "20/12/2018")
=> [["20/12/2018", 400, "--", 400]]

[4] pry(main)> bank_account.withdraw_money(200, "21/12/2018")
=> [["20/12/2018", 400, "--", 400], ["21/12/2018", "--", 200, 200]]
[5] pry(main)> bank_statement = BankStatement.new
=> #<BankStatement:0x007fa423c9e4f0>
[6] pry(main)> bank_statement.print_statment(bank_account)
=> "date||credit||debit||balance\n20/12/2018  ||400  ||--  ||400\n21/12/2018  ||--  ||200  ||200"
```
