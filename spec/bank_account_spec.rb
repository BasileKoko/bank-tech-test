require 'bank_account'

describe BankAccount do
  it "should create new bank_account with balance 0" do
    expect(subject.balance).to eq 0
  end
  it {is_expected.to respond_to(:deposit_money).with(2)}
  it {is_expected.to respond_to(:withdraw_money).with(2)}

  it "should increase balance when deposit is made" do
    subject.deposit_money(10, "09/03/2017")
    expect(subject.balance).to eq 10
  end

  it "should decrease balance when withdraw is made" do
    subject.deposit_money(10, "09/03/2017")
    subject.withdraw_money(8, "10/03/2017")
    expect(subject.balance).to eq 2
  end

end
