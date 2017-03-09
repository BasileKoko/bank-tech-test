require 'bank_account'

describe BankAccount do
  it "should create new bank_account with balance 0" do
    expect(subject.balance).to eq 0
  end
  it {is_expected.to respond_to(:deposit_money).with(2)}
end
