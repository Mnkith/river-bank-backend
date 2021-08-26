class UserSerializer
  include FastJsonapi::ObjectSerializer

  has_many :accounts
  has_many :transactions, through: :accounts 
  # set_key_transform :camel_lower
  attributes :id, :email, :name

  # attribute :user_name, &:name

  attribute :accounts do |user|
    user.accounts.map do |account|
      {
        transactions: account.transactions,
        account_type: account.account_type,
        available_balance: account.available_balance,
        exp: account.exp,
        transactions_count: account.transactions_count
      }
    end
  end
end
