require 'bank_tech_test'

describe Bank do
  it 'balance increased on :deposit' do
    expect(subject.deposit(10)).to be_an_instance_of(Array)
  end

  it 'balance decreased on :withdraw' do
    expect(subject.withdraw(10)).to be_an_instance_of(Array)
  end

  it 'responds to :print_statement' do
    expect(subject).to respond_to(:print_statement)
  end
end
