class AddTransactionsCountToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :transactions_count, :integer
  end
end
