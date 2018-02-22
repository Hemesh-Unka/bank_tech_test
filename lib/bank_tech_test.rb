
require 'date'

class Bank
  def initialize
    @transactions = []
    @balance = 0
    @amount = 0
    @date = ''
  end

  # def deposit(amount)
  #   @balance += amount
  #   record_transaction(amount)
  # end

  def withdraw(amount)
    @balance -= amount
    record_transaction(amount)
  end

  def print_statement
    @transactions.each { |t| puts t }
  end

  private
  def record_transaction(amount)
    @transactions << "#{DateTime.now} || #{amount} || #{@balance}"
  end
end
