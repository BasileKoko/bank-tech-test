require 'bank_statement'

describe BankStatement do
  let(:bank_account) {double BankAccount.new}

  it {is_expected.to respond_to(:print_statment).with(1)}

  it "can print the bank_statement" do
    allow(bank_account).to receive(:deposit_money).with(10, "09/03/2017")
    allow(bank_account).to receive(:withdraw_money).with(5, "10/03/2017")
    allow(bank_account).to receive(:log) {[["09/03/2017", 10, "--", 10], ["10/03/2017", "--", 5, 5]]}
    expect(subject.print_statment(bank_account)).to include("date||credit||debit||balance\n09/03/2017  ||10  ||--  ||10\n10/03/2017  ||--  ||5  ||5")
  end
end
