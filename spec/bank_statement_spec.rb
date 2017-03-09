require 'bank_statement'

describe BankStatement do
  it {is_expected.to respond_to(:print_statment).with(1)}

end
