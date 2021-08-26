class UserSerializer
  include FastJsonapi::ObjectSerializer
  # set_key_transform :camel_lower
  attributes :id, :email, :name

  # attribute :user_name, &:name

  attribute :accounts do |user|
    user.accounts.map do |account|
      {
        transactions: account.transactions,
        account_type: account.account_type,
        available_balance: account.available_balance,
        exp: account.exp
      }
    end
  end
end
