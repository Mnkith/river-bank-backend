class Account < ApplicationRecord
  belongs_to :user
  has_many :transactions
  after_create :assign_fake_transactions

  def assign_fake_transactions 
    fake_transactions = rand 3..7
    transaction_types = ['Gas', 'Grossery', 'E service', 'Restaurant', 'Utility']

    fake_transactions.times do
      transaction_date = Date.today - rand(30)
      description = transaction_types[ rand 0..4 ]
      amount = rand(100..1200) / 100.0
      # byebug
      Transaction.create user_id: self.user_id,
                         account_id: self.id, 
                         transaction_date: transaction_date,
                         description: description,
                         amount: amount
    end
  end
end
